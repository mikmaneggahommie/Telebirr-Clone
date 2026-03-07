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
  topActions?: { x?: number; y?: number };
  successBadge?: { x?: number; y?: number };
  successText?: { x?: number; y?: number };
  amountBlock?: { x?: number; y?: number };
  divider?: { x?: number; y?: number };
  table?: { x?: number; y?: number };
  qr?: { x?: number; y?: number };
  qrIcon?: { x?: number; y?: number };
  qrText?: { x?: number; y?: number };
  qrArrow?: { x?: number; y?: number };
  banner?: { x?: number; y?: number; h?: number };
  dots?: { x?: number; y?: number };
  finishedButton?: { x?: number; y?: number };
}

export interface ReceiptLayoutContext {
  os: ReceiptOs;
  navType: ReceiptNav;
  canvasWidth: number;
  canvasHeight: number;
  navButtonsHeight?: number; // Visual height for anchoring logic
  tweaks?: ReceiptLayoutTweaks;
}

export interface SectionLayout {
  x: number;
  y: number;
  width: number;
  height: number;
  transform?: string;
}

export interface SubElementLayout {
  x: number;
  y: number;
}

export interface LayoutResults {
  sections: Record<SectionName, SectionLayout>;
  subElements: {
    qrIcon: SubElementLayout;
    qrText: SubElementLayout;
    qrArrow: SubElementLayout;
  };
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
    afterTextToAmount: 85,
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
  const nav = ctx.navButtonsHeight ?? NAV_HEIGHT[ctx.navType];
  const contentHeight = Math.max(1, ctx.canvasHeight - status - nav);

  return {
    sx: ctx.canvasWidth / RECEIPT_LAYOUT_SPEC.reference.width,
    sy: contentHeight / RECEIPT_LAYOUT_SPEC.reference.contentHeight,
  };
};

export const computeReceiptLayout = (ctx: ReceiptLayoutContext): LayoutResults => {
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

  const sections: Record<SectionName, SectionLayout> = {
    topActions: { x: 0, y: topActionsY, width: ctx.canvasWidth, height: h.topActions * sy },
    successBadge: { x: centerX(h.successBadge * sx), y: successBadgeY, width: h.successBadge * sx, height: h.successBadge * sy },
    successText: {
      x: 0,
      y: successTextY,
      width: ctx.canvasWidth,
      height: h.successText * sy,
      transform: `translate(${spec.xAdjustments.successText * sx}px, 0px)`,
    },
    amountBlock: { x: 0, y: amountY, width: ctx.canvasWidth, height: h.amountBlock * sy },
    divider: { x: centerX(spec.width.divider * sx), y: dividerY, width: spec.width.divider * sx, height: h.divider * sy },
    tableBlock: { x: centerX(spec.width.table * sx), y: tableY, width: spec.width.table * sx, height: h.tableBlock * sy },
    qrRow: {
      x: centerX(spec.width.table * sx),
      y: qrY,
      width: spec.width.table * sx,
      height: h.qrRow * sy,
      transform: `translate(${spec.xAdjustments.qrContent * sx}px, 0px)`,
    },
    banner: { x: centerX(spec.width.banner * sx), y: bannerY, width: spec.width.banner * sx, height: h.banner * sy },
    dots: { x: centerX(spec.width.dots * sx), y: dotsY, width: spec.width.dots * sx, height: h.dots * sy },
    finishedButton: {
      x: centerX(spec.width.finishedButton * sx),
      y: finishedButtonY,
      width: spec.width.finishedButton * sx,
      height: h.finishedButton * sy,
      transform: `translate(${spec.xAdjustments.finishedButton * sx}px, 0px)`,
    },
  };

  return {
    sections,
    subElements: {
      qrIcon: { x: 0, y: 0 },
      qrText: { x: 0, y: 0 },
      qrArrow: { x: 0, y: 0 },
    },
  };
};

export const applyTweaks = (results: LayoutResults, ctx: ReceiptLayoutContext): LayoutResults => {
  const { sx, sy } = getScale(ctx);
  const tweaks = ctx.tweaks ?? {};
  const { sections, subElements } = results;

  const t = (val?: { x?: number; y?: number }) => ({
    x: clamp(val?.x ?? 0, -50, 50),
    y: clamp(val?.y ?? 0, -50, 50),
  });

  const updatedSections = { ...sections };
  const updatedSubElements = { ...subElements };

  // Apply Section Tweaks
  (Object.keys(updatedSections) as SectionName[]).forEach((name) => {
    const tweak = tweaks[name === "tableBlock" ? "table" : (name as keyof ReceiptLayoutTweaks)];
    if (tweak) {
      const { x, y } = t(tweak as any);
      updatedSections[name].transform = [
        updatedSections[name].transform,
        `translate(${x * sx}px, ${y * sy}px)`,
      ]
        .filter(Boolean)
        .join(" ");
    }
  });

  // Special case: Banner Height tweak
  if (tweaks.banner?.h) {
    updatedSections.banner.height = tweaks.banner.h * sy;
  }

  // Apply Sub-Element Tweaks
  const qrT = {
    icon: t(tweaks.qrIcon),
    text: t(tweaks.qrText),
    arrow: t(tweaks.qrArrow),
  };

  updatedSubElements.qrIcon = { x: qrT.icon.x * sx, y: qrT.icon.y * sy };
  updatedSubElements.qrText = { x: qrT.text.x * sx, y: qrT.text.y * sy };
  updatedSubElements.qrArrow = { x: qrT.arrow.x * sx, y: qrT.arrow.y * sy };

  return { sections: updatedSections, subElements: updatedSubElements };
};
