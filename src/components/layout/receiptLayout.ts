export const REFERENCE_WIDTH = 360;
export const REFERENCE_HEIGHT = 780;

const STATUS_BAR_HEIGHT = {
  android: 32,
  ios: 48,
} as const;

const NAV_HEIGHT = {
  buttons: 48,
  gestures: 24,
  home_indicator: 24,
  hidden: 0,
} as const;

export type ReceiptOs = "android" | "ios";
export type ReceiptNav = "buttons" | "gestures" | "home_indicator" | "hidden";
export type SectionName =
  | "topActions"
  | "successBadge"
  | "successText"
  | "amountBlock"
  | "divider"
  | "tableBlock"
  | "qrRow"
  | "banner"
  | "dots"
  | "finishedButton";

export interface ReceiptLayoutTweaks {
  qr?: { x?: number; y?: number };
  banner?: { x?: number; y?: number };
  dots?: { x?: number; y?: number };
  finishedButton?: { x?: number; y?: number };
}

export interface ReceiptLayoutContext {
  os: ReceiptOs;
  navType: ReceiptNav;
  canvasWidth: number;
  canvasHeight: number;
  tweaks?: ReceiptLayoutTweaks;
}

export interface SectionLayout {
  x: number;
  y: number;
  width: number;
  height: number;
  transform?: string;
}

export interface ReceiptLayoutSpec {
  reference: {
    width: number;
    height: number;
    contentHeight: number;
  };
  sectionHeights: Record<SectionName, number>;
  anchors: {
    topActionsTop: number;
    afterTopActionsToBadge: number;
    afterBadgeToText: number;
    afterTextToAmount: number;
    afterAmountToDivider: number;
    afterDividerToTable: number;
    afterTableToQr: number;
    afterQrToBanner: number;
    afterBannerToDots: number;
    afterDotsToButton: number;
  };
  width: {
    divider: number;
    table: number;
    banner: number;
    dots: number;
    finishedButton: number;
  };
  xAdjustments: {
    successText: number;
    qrContent: number;
    finishedButton: number;
  };
}

export const RECEIPT_LAYOUT_SPEC: ReceiptLayoutSpec = {
  reference: {
    width: REFERENCE_WIDTH,
    height: REFERENCE_HEIGHT,
    contentHeight: 700,
  },
  sectionHeights: {
    topActions: 20,
    successBadge: 44,
    successText: 16,
    amountBlock: 37,
    divider: 1,
    tableBlock: 102,
    qrRow: 28,
    banner: 106,
    dots: 7,
    finishedButton: 35,
  },
  anchors: {
    topActionsTop: 37.5,
    afterTopActionsToBadge: 10,
    afterBadgeToText: 9,
    afterTextToAmount: 80,
    afterAmountToDivider: 43,
    afterDividerToTable: 9,
    afterTableToQr: 7,
    afterQrToBanner: 2,
    afterBannerToDots: 12,
    afterDotsToButton: 72,
  },
  width: {
    divider: 307,
    table: 312,
    banner: 345,
    dots: 52,
    finishedButton: 160,
  },
  xAdjustments: {
    successText: 2,
    qrContent: -1,
    finishedButton: -6,
  },
};

const clamp = (v: number, min: number, max: number) => Math.min(max, Math.max(min, v));

const getScale = (ctx: ReceiptLayoutContext) => {
  const status = STATUS_BAR_HEIGHT[ctx.os];
  const nav = NAV_HEIGHT[ctx.navType];
  const contentHeight = Math.max(1, ctx.canvasHeight - status - nav);

  return {
    sx: ctx.canvasWidth / RECEIPT_LAYOUT_SPEC.reference.width,
    sy: contentHeight / RECEIPT_LAYOUT_SPEC.reference.contentHeight,
  };
};

const computeSectionTransforms = (ctx: ReceiptLayoutContext): Partial<Record<SectionName, string>> => {
  const { sx, sy } = getScale(ctx);
  const tweaks = ctx.tweaks ?? {};

  const t = {
    qr: { x: clamp(tweaks.qr?.x ?? 0, -40, 40), y: clamp(tweaks.qr?.y ?? 0, -40, 40) },
    banner: { x: clamp(tweaks.banner?.x ?? 0, -40, 40), y: clamp(tweaks.banner?.y ?? 0, -40, 40) },
    dots: { x: clamp(tweaks.dots?.x ?? 0, -40, 40), y: clamp(tweaks.dots?.y ?? 0, -40, 40) },
    finishedButton: {
      x: clamp(tweaks.finishedButton?.x ?? 0, -40, 40),
      y: clamp(tweaks.finishedButton?.y ?? 0, -40, 40),
    },
  };

  return {
    qrRow: `translate(${t.qr.x * sx}px, ${t.qr.y * sy}px)`,
    banner: `translate(${t.banner.x * sx}px, ${t.banner.y * sy}px)`,
    dots: `translate(${t.dots.x * sx}px, ${t.dots.y * sy}px)`,
    finishedButton: `translate(${t.finishedButton.x * sx}px, ${t.finishedButton.y * sy}px)`,
  };
};

export const computeReceiptLayout = (ctx: ReceiptLayoutContext): Record<SectionName, SectionLayout> => {
  const spec = RECEIPT_LAYOUT_SPEC;
  const { sx, sy } = getScale(ctx);
  const h = spec.sectionHeights;
  const a = spec.anchors;

  const topActionsY = a.topActionsTop * sy;
  const successBadgeY = topActionsY + h.topActions * sy + a.afterTopActionsToBadge * sy;
  const successTextY = successBadgeY + h.successBadge * sy + a.afterBadgeToText * sy;
  const amountY = successTextY + h.successText * sy + a.afterTextToAmount * sy;
  const dividerY = amountY + h.amountBlock * sy + a.afterAmountToDivider * sy;
  const tableY = dividerY + h.divider * sy + a.afterDividerToTable * sy;
  const qrY = tableY + h.tableBlock * sy + a.afterTableToQr * sy;
  const bannerY = qrY + h.qrRow * sy + a.afterQrToBanner * sy;
  const dotsY = bannerY + h.banner * sy + a.afterBannerToDots * sy;
  const finishedButtonY = dotsY + h.dots * sy + a.afterDotsToButton * sy;

  const centerX = (w: number) => (ctx.canvasWidth - w) / 2;

  return {
    topActions: {
      x: 0,
      y: topActionsY,
      width: ctx.canvasWidth,
      height: h.topActions * sy,
    },
    successBadge: {
      x: centerX(h.successBadge * sx),
      y: successBadgeY,
      width: h.successBadge * sx,
      height: h.successBadge * sy,
    },
    successText: {
      x: 0,
      y: successTextY,
      width: ctx.canvasWidth,
      height: h.successText * sy,
      transform: `translate(${spec.xAdjustments.successText * sx}px, 0px)`,
    },
    amountBlock: {
      x: 0,
      y: amountY,
      width: ctx.canvasWidth,
      height: h.amountBlock * sy,
    },
    divider: {
      x: centerX(spec.width.divider * sx),
      y: dividerY,
      width: spec.width.divider * sx,
      height: h.divider * sy,
    },
    tableBlock: {
      x: centerX(spec.width.table * sx),
      y: tableY,
      width: spec.width.table * sx,
      height: h.tableBlock * sy,
    },
    qrRow: {
      x: centerX(spec.width.table * sx),
      y: qrY,
      width: spec.width.table * sx,
      height: h.qrRow * sy,
      transform: `translate(${spec.xAdjustments.qrContent * sx}px, 0px)`,
    },
    banner: {
      x: centerX(spec.width.banner * sx),
      y: bannerY,
      width: spec.width.banner * sx,
      height: h.banner * sy,
    },
    dots: {
      x: centerX(spec.width.dots * sx),
      y: dotsY,
      width: spec.width.dots * sx,
      height: h.dots * sy,
    },
    finishedButton: {
      x: centerX(spec.width.finishedButton * sx),
      y: finishedButtonY,
      width: spec.width.finishedButton * sx,
      height: h.finishedButton * sy,
      transform: `translate(${spec.xAdjustments.finishedButton * sx}px, 0px)`,
    },
  };
};

export const applyTweaks = (
  layout: Record<SectionName, SectionLayout>,
  ctx: ReceiptLayoutContext,
): Record<SectionName, SectionLayout> => {
  const transforms = computeSectionTransforms(ctx);

  return {
    ...layout,
    qrRow: {
      ...layout.qrRow,
      transform: [layout.qrRow.transform, transforms.qrRow].filter(Boolean).join(" "),
    },
    banner: {
      ...layout.banner,
      transform: [layout.banner.transform, transforms.banner].filter(Boolean).join(" "),
    },
    dots: {
      ...layout.dots,
      transform: [layout.dots.transform, transforms.dots].filter(Boolean).join(" "),
    },
    finishedButton: {
      ...layout.finishedButton,
      transform: [layout.finishedButton.transform, transforms.finishedButton].filter(Boolean).join(" "),
    },
  };
};
