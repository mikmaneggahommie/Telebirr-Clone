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
  checkmarkIcon?: { x?: number; y?: number };
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
  navButtonsHeight?: number;
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
    amountBlock: 42,
    divider: 0.8,
    tableBlock: 104,
    qrRow: 28,
    banner: 105,
    dots: 8,
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
};

const getScale = (ctx: ReceiptLayoutContext) => {
  const status = STATUS_BAR_HEIGHT[ctx.os];
  const nav = ctx.navButtonsHeight && ctx.navType === 'buttons' ? ctx.navButtonsHeight : NAV_HEIGHT[ctx.navType];
  const contentHeight = Math.max(1, ctx.canvasHeight - status - nav);

  return {
    sx: ctx.canvasWidth / RECEIPT_LAYOUT_SPEC.reference.width,
    sy: contentHeight / RECEIPT_LAYOUT_SPEC.reference.contentHeight,
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
  const dotsY = bannerY + (ctx.tweaks?.banner?.h ?? h.banner) * sy + a.afterBannerToDots * sy;
  const finishedButtonY = dotsY + h.dots * sy + a.afterDotsToButton * sy;

  const centerX = (w: number) => (ctx.canvasWidth - w) / 2;

  return {
    topActions: { x: 0, y: topActionsY, width: ctx.canvasWidth, height: h.topActions * sy },
    successBadge: { x: centerX(h.successBadge * sx), y: successBadgeY, width: h.successBadge * sx, height: h.successBadge * sy },
    successText: { x: 0, y: successTextY, width: ctx.canvasWidth, height: h.successText * sy },
    amountBlock: { x: 0, y: amountY, width: ctx.canvasWidth, height: h.amountBlock * sy },
    divider: { x: centerX(spec.width.divider * sx), y: dividerY, width: spec.width.divider * sx, height: h.divider * sy },
    tableBlock: { x: centerX(spec.width.table * sx), y: tableY, width: spec.width.table * sx, height: h.tableBlock * sy },
    qrRow: { x: centerX(spec.width.table * sx), y: qrY, width: spec.width.table * sx, height: h.qrRow * sy },
    banner: { x: centerX(spec.width.banner * sx), y: bannerY, width: spec.width.banner * sx, height: (ctx.tweaks?.banner?.h ?? h.banner) * sy },
    dots: { x: centerX(spec.width.dots * sx), y: dotsY, width: spec.width.dots * sx, height: h.dots * sy },
    finishedButton: { x: centerX(spec.width.finishedButton * sx), y: finishedButtonY, width: spec.width.finishedButton * sx, height: h.finishedButton * sy },
  };
};

export const applyTweaks = (
  layout: Record<SectionName, SectionLayout>,
  ctx: ReceiptLayoutContext,
) => {
  const twins = ctx.tweaks ?? {};
  const tweakScale = ctx.canvasWidth / RECEIPT_LAYOUT_SPEC.reference.width;
  const scale = (value?: number) => (value ?? 0) * tweakScale;

  const sections: Record<SectionName, SectionLayout> = { ...layout };

  // Apply section-level translations
  if (twins.topActions) sections.topActions.transform = `translate(${scale(twins.topActions.x)}px, ${scale(twins.topActions.y)}px)`;
  if (twins.successBadge) sections.successBadge.transform = `translate(${scale(twins.successBadge.x)}px, ${scale(twins.successBadge.y)}px)`;
  if (twins.successText) sections.successText.transform = `translate(${scale(twins.successText.x)}px, ${scale(twins.successText.y)}px)`;
  if (twins.amountBlock) sections.amountBlock.transform = `translate(${scale(twins.amountBlock.x)}px, ${scale(twins.amountBlock.y)}px)`;
  if (twins.divider) sections.divider.transform = `translate(${scale(twins.divider.x)}px, ${scale(twins.divider.y)}px)`;
  if (twins.table) sections.tableBlock.transform = `translate(${scale(twins.table.x)}px, ${scale(twins.table.y)}px)`;
  if (twins.qr) sections.qrRow.transform = `translate(${scale(twins.qr.x)}px, ${scale(twins.qr.y)}px)`;
  if (twins.banner) sections.banner.transform = `translate(${scale(twins.banner.x)}px, ${scale(twins.banner.y)}px)`;
  if (twins.dots) sections.dots.transform = `translate(${scale(twins.dots.x)}px, ${scale(twins.dots.y)}px)`;
  if (twins.finishedButton) sections.finishedButton.transform = `translate(${scale(twins.finishedButton.x)}px, ${scale(twins.finishedButton.y)}px)`;

  // Specific sub-element overrides (not relative to parent row transform, used as absolute nudges)
  const subElements = {
    checkmarkIcon: { x: scale(twins.checkmarkIcon?.x), y: scale(twins.checkmarkIcon?.y) },
    qrIcon: { x: scale(twins.qrIcon?.x), y: scale(twins.qrIcon?.y) },
    qrText: { x: scale(twins.qrText?.x), y: scale(twins.qrText?.y) },
    qrArrow: { x: scale(twins.qrArrow?.x), y: scale(twins.qrArrow?.y) },
  };

  return { sections, subElements };
};
