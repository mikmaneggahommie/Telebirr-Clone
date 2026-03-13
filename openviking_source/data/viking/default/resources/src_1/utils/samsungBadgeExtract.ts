const SAMSUNG_BADGE_BASE_PATH = "/status/samsung/";

const MIN_FOREGROUND_DELTA = 24;
const SATURATION_ALLOWANCE = 32;
const ALPHA_SCALE = 12;
const MIN_CROP_ALPHA = 18;

const processedBadgeCache = new Map<string, Promise<string>>();

type Rgb = [number, number, number];

const clampByte = (value: number) => Math.max(0, Math.min(255, Math.round(value)));

const parseHexColor = (color: string): Rgb => {
  const hex = color.trim().replace(/^#/, "");
  if (hex.length === 3) {
    const r = parseInt(hex[0] + hex[0], 16);
    const g = parseInt(hex[1] + hex[1], 16);
    const b = parseInt(hex[2] + hex[2], 16);
    return [r, g, b];
  }
  if (hex.length === 6) {
    const r = parseInt(hex.slice(0, 2), 16);
    const g = parseInt(hex.slice(2, 4), 16);
    const b = parseInt(hex.slice(4, 6), 16);
    return [r, g, b];
  }
  return [28, 28, 30];
};

const luminance = (r: number, g: number, b: number) => (0.2126 * r) + (0.7152 * g) + (0.0722 * b);
const saturation = (r: number, g: number, b: number) => Math.max(r, g, b) - Math.min(r, g, b);

const sampleBackgroundLuma = (pixels: Uint8ClampedArray, width: number, height: number) => {
  const readLuma = (x: number, y: number) => {
    const offset = ((y * width) + x) * 4;
    return luminance(pixels[offset], pixels[offset + 1], pixels[offset + 2]);
  };

  const points: Array<[number, number]> = [];
  const maxX = Math.max(0, width - 1);
  const maxY = Math.max(0, height - 1);
  const steps = [0, 0.1, 0.25, 0.5, 0.75, 0.9, 1];

  for (const step of steps) {
    points.push([Math.round(maxX * step), 0]);
    points.push([Math.round(maxX * step), maxY]);
    points.push([0, Math.round(maxY * step)]);
    points.push([maxX, Math.round(maxY * step)]);
  }

  points.push([0, 0], [maxX, 0], [0, maxY], [maxX, maxY]);

  const samples = points.map(([x, y]) => readLuma(x, y)).sort((a, b) => a - b);
  if (samples.length === 0) return 235;

  const percentile25 = samples[Math.floor(samples.length * 0.25)];
  return Math.max(200, percentile25);
};

const findOpaqueBounds = (
  pixels: Uint8ClampedArray,
  width: number,
  height: number,
  minAlpha = MIN_CROP_ALPHA,
) => {
  let minX = width;
  let minY = height;
  let maxX = -1;
  let maxY = -1;

  for (let y = 0; y < height; y += 1) {
    for (let x = 0; x < width; x += 1) {
      const alpha = pixels[((y * width) + x) * 4 + 3];
      if (alpha < minAlpha) continue;
      if (x < minX) minX = x;
      if (y < minY) minY = y;
      if (x > maxX) maxX = x;
      if (y > maxY) maxY = y;
    }
  }

  if (maxX < minX || maxY < minY) return null;
  return {
    x: minX,
    y: minY,
    width: (maxX - minX) + 1,
    height: (maxY - minY) + 1,
  };
};

const processBadge = async (file: string, color: string): Promise<string> => {
  const image = await new Promise<HTMLImageElement>((resolve, reject) => {
    const img = new Image();
    img.decoding = "async";
    img.onload = () => resolve(img);
    img.onerror = () => reject(new Error(`Failed to load Samsung icon: ${file}`));
    img.src = `${SAMSUNG_BADGE_BASE_PATH}${file}`;
  });

  const canvas = document.createElement("canvas");
  canvas.width = image.naturalWidth || image.width;
  canvas.height = image.naturalHeight || image.height;

  const ctx = canvas.getContext("2d", { willReadFrequently: true });
  if (!ctx) throw new Error("2D canvas context unavailable.");

  ctx.drawImage(image, 0, 0);
  const imageData = ctx.getImageData(0, 0, canvas.width, canvas.height);
  const pixels = imageData.data;
  const bgLuma = sampleBackgroundLuma(pixels, canvas.width, canvas.height);
  const [targetR, targetG, targetB] = parseHexColor(color);

  for (let i = 0; i < pixels.length; i += 4) {
    const r = pixels[i];
    const g = pixels[i + 1];
    const b = pixels[i + 2];
    const lum = luminance(r, g, b);
    const sat = saturation(r, g, b);
    const delta = bgLuma - lum;
    const foregroundStrength = delta - MIN_FOREGROUND_DELTA;
    const saturationStrength = sat - SATURATION_ALLOWANCE;
    const alphaStrength = Math.max(foregroundStrength, saturationStrength * 0.6);

    if (alphaStrength <= 0) {
      pixels[i + 3] = 0;
      continue;
    }

    pixels[i] = targetR;
    pixels[i + 1] = targetG;
    pixels[i + 2] = targetB;
    pixels[i + 3] = clampByte(alphaStrength * ALPHA_SCALE);
  }

  ctx.putImageData(imageData, 0, 0);

  const cropBounds = findOpaqueBounds(pixels, canvas.width, canvas.height);
  if (!cropBounds) return canvas.toDataURL("image/png");

  const outputCanvas = document.createElement("canvas");
  outputCanvas.width = cropBounds.width;
  outputCanvas.height = cropBounds.height;
  const outputCtx = outputCanvas.getContext("2d");
  if (!outputCtx) return canvas.toDataURL("image/png");

  outputCtx.drawImage(
    canvas,
    cropBounds.x,
    cropBounds.y,
    cropBounds.width,
    cropBounds.height,
    0,
    0,
    cropBounds.width,
    cropBounds.height,
  );

  return outputCanvas.toDataURL("image/png");
};

export const getProcessedSamsungBadge = (file: string, color: string): Promise<string> => {
  const key = `${file}|${color.toLowerCase()}`;
  const cached = processedBadgeCache.get(key);
  if (cached) return cached;

  const promise = processBadge(file, color);
  processedBadgeCache.set(key, promise);
  return promise;
};

export const clearProcessedSamsungBadgeCache = () => {
  processedBadgeCache.clear();
};
