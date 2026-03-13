import { useId } from "react";
import { cn } from "../utils/cn";
import {
  Download,
  MessageSquare,
  Phone,
  MessageCircle,
  Mail,
  PlaySquare,
  Usb,
  Leaf
} from "lucide-react";
import {
  applyTweaks,
  computeReceiptLayout,
  REFERENCE_WIDTH,
  ReceiptLayoutTweaks,
  SectionLayout,
} from "./layout/receiptLayout";
import {
  SAMSUNG_SYSTEM_TOGGLE_ICON_FILES,
  SamsungBatteryIconFile,
  SamsungFolderIcon,
  SamsungNetworkTypeIconFile,
  SamsungSignalIconFile,
  SamsungStatusIconFile,
  SamsungStatusText,
  SamsungSystemToggleIconFile,
  SamsungWifiIconFile,
} from "./status/SamsungStatusIcons";

export const BANNER_SLOTS = [1, 2, 3, 4, 5] as const;

export const BANNER_IMAGE_MAP: Partial<Record<(typeof BANNER_SLOTS)[number], string>> = {
  1: "/Banners/Banner 1.png?v=slot1",
  2: undefined,
  3: "/Banners/Banner 3.png?v=slot3",
  4: "/Banners/Banner 4.png?v=slot4",
  5: "/Banners/Banner 5.png?v=slot5",
};

export const getBannerSrc = (index: number): string | undefined => BANNER_IMAGE_MAP[index as (typeof BANNER_SLOTS)[number]];

export const devicePresets = {
  iphone_modern: {
    os: "ios",
    notch: "dynamic_island",
    font: "font-roboto",
    nav: "home_indicator",
    width: "393px",
    height: "852px",
    safeAreaBottom: 34,
    safeAreaPadding: 16,
  },
  samsung: { os: "android", notch: "punch_center", font: "font-roboto", nav: "buttons", width: "360px", height: "800px" },
  test_accuracy: { os: "android", notch: "punch_left", font: "font-roboto", nav: "buttons", width: "360px", height: "780px" },
} as const;

export type PresetKey = keyof typeof devicePresets;


export interface ReceiptData {
  preset: PresetKey;
  cameraHoleOverride: "default" | "left" | "center" | "none";
  navBarOverride: "default" | "gestures" | "buttons" | "hidden";
  downloadIconSize: number;    // px, default 16
  downloadIconX: number;       // px, default 0
  downloadIconY: number;       // px, default 0
  shareIconSize: number;       // px, default 16
  shareIconX: number;          // px, default 0
  shareIconY: number;          // px, default 0
  checkmarkSize: number;       // svg width/height inside badge, default 22
  checkmarkIconX: number;      // px, default 0
  checkmarkIconY: number;      // px, default 0
  checkmarkStroke: number;     // px, default 2.5
  amountFontSize: number;      // px, default 31.5
  amountStroke: number;        // px, default 1.1
  qrFontSize: number;          // px, default 14.2
  qrTextWeight: number;        // 100–900, default 600
  qrTextStroke: number;        // px, default 0
  qrIconWidth: number;         // px, default 24
  qrIconHeight: number;        // px, default 28
  qrArrowWidth: number;        // px, default 14.5
  qrArrowHeight: number;       // px, default 19
  qrArrowStroke: number;       // px, default 2.4
  tableKeyWeight: number;      // 100–900, default 600
  tableKeyStroke: number;      // px, default 0.1
  tableKeySize: number;        // px, default 11
  tableKeyColumnX: number;     // px, default 0
  tableKeyColumnY: number;     // px, default 0
  tableValWeight: number;      // 100–900, default 400
  tableValStroke: number;      // px, default 0
  tableValSize: number;        // px, default 11.2
  tableValColumnX: number;     // px, default 0
  tableValColumnY: number;     // px, default 0
  dotSize: number;             // px, default 7.5
  finishedTextSize: number;    // px, default 13
  navIconSize: number;         // px, default 20
  bottomNavHeight: number;     // px, default 42.5 (buttons nav)
  bottomNavIconsX: number;     // px, default 0
  bottomNavIconsY: number;     // px, default 0
  iphoneContentNudgeY: number; // px, whole-content vertical nudge (iOS only)
  time: string;
  timeMeridiem: "AM" | "PM";
  battery: string;
  batteryCharging: boolean;
  amount: string;
  transactionTime: string;
  transactionType: string;
  transactionTo: string;
  transactionNumber: string;
  bannerIndex: number;
  simCount: 1 | 2;
  signalStrength: 0 | 1 | 2 | 3 | 4;  // 0 = no signal, 4 = full
  wifiStrength: 0 | 1 | 2 | 3;         // 0 = off, 3 = full
  iosWifiEnabled: boolean;
  showBluetooth: boolean;
  silentMode: boolean;
  showLocation: boolean;
  showVolte: boolean;
  showMobileData: boolean;
  iosNetworkType: "5G" | "LTE" | "4G" | "3G" | "E";
  iosBatteryPercent: boolean;   // show % number inside battery outline
  iosLowPowerMode: boolean;     // yellow battery
  iosDndMode: boolean;          // show DnD moon on left side
  iosShowVpn: boolean;          // show VPN badge on right side
  airplaneMode: boolean;
  showAlarm: boolean;
  showNfc: boolean;
  use12HourFormat: boolean;
  samsungOneUiEra: "oneui6" | "oneui8plus";
  samsungNotificationMode: "all" | "recent3" | "number" | "none";
  samsungShowBatteryPercent: boolean;
  samsungShowNetworkLabel: boolean;
  samsungShowWifi: boolean;
  samsungShowSignal: boolean;
  samsungNetworkTypeSim1: "5G" | "LTE" | "4G" | "H+" | "H" | "3G" | "E";
  samsungNetworkTypeSim2: "5G" | "LTE" | "4G" | "H+" | "H" | "3G" | "E";
  samsungNotifMessages: boolean;
  samsungNotifPhone: boolean;
  samsungNotifWhatsApp: boolean;
  samsungNotifGmail: boolean;
  samsungNotifDownload: boolean;
  samsungNotifPlayStore: boolean;
  samsungNotifUsb: boolean;
  samsungShowNetworkSpeed: boolean;
  samsungSoundMode: "sound" | "vibrate" | "mute";
  samsungShowDnd: boolean;
  samsungShowRotationLock: boolean;
  samsungShowBluetooth: boolean;
  samsungShowAirplane: boolean;
  samsungShowAlarm: boolean;
  samsungShowLocation: boolean;
  samsungShowHotspot: boolean;
  samsungShowVpn: boolean;
  samsungShowNfc: boolean;
  samsungIconEnabled: Record<SamsungStatusIconFile, boolean>;
  samsungNetworkTypeIcon: SamsungNetworkTypeIconFile;
  samsungSignalIcon: SamsungSignalIconFile;
  samsungWifiIcon: SamsungWifiIconFile;
  samsungBatteryIcon: SamsungBatteryIconFile;
  layoutTweaks?: ReceiptLayoutTweaks;
}

// ─── iOS Status Icons (SF Symbols geometry, San Francisco font) ───

// iOS WiFi: spec assets for 3/2/1/0 strength
const IosWifiIcon = ({ strength = 3 }: { strength?: number }) => {
  const clamped = Math.min(3, Math.max(0, strength));
  return (
    <img
      src={`/ios-status/ios_wifi_${clamped}.svg`}
      width={20}
      height={12}
      alt="Wi-Fi"
      style={{ display: "block" }}
    />
  );
};

const IosSignalZero = () => (
  <img
    src="/ios-status/ios_signal_zero.svg"
    width={20}
    height={14}
    alt="No Signal"
    style={{ display: "block" }}
  />
);

const IosSignalSingle = () => (
  <img
    src="/ios-status/ios_signal_single.svg"
    width={20}
    height={14}
    alt="Signal"
    style={{ display: "block" }}
  />
);

const IosSignalDual = () => (
  <img
    src="/ios-status/ios_signal_dual.svg"
    width={20}
    height={14}
    alt="Dual SIM Signal"
    style={{ display: "block" }}
  />
);

const IOS_NETWORK_ICON_MAP: Partial<Record<ReceiptData["iosNetworkType"], string>> = {
  "LTE": "/ios-status/ios_lte.svg",
  "4G": "/ios-status/ios_4g.svg",
  "5G": "/ios-status/ios_5g.svg",
  "3G": "/ios-status/ios_3g.svg",
  "E": undefined,
};

const IosNetworkIcon = ({ type }: { type: ReceiptData["iosNetworkType"] }) => {
  const src = IOS_NETWORK_ICON_MAP[type];
  if (!src) {
    return (
      <span
        style={{
          fontFamily: '-apple-system, "SF Pro Text", "Helvetica Neue", sans-serif',
          fontWeight: 700,
          fontSize: "10px",
          lineHeight: 1,
          letterSpacing: "-0.2px",
          color: "#000",
          transform: "translateY(-0.2px)",
          display: "inline-block",
        }}
      >
        {type}
      </span>
    );
  }
  return <img src={src} width={20} height={12} alt={type} style={{ display: "block" }} />;
};

// iOS Battery — spec-accurate: charging=green, LPM=yellow, ≤20%=red, else black
const IosBattery = ({
  percent,
  charging = false,
  lowPowerMode = false,
  showPercent = false,
}: {
  percent: number;
  charging?: boolean;
  lowPowerMode?: boolean;
  showPercent?: boolean;
}) => {
  const pct = Math.min(100, Math.max(0, percent));
  const clipBase = useId().replace(/:/g, "");
  const clipBodyId = `${clipBase}-body`;
  const isCritical = pct <= 20;
  const isLowPower = lowPowerMode;
  const isCharging = charging;
  const systemFg = "#000000"; // light mode only
  const systemPrimary = systemFg;
  const fillColor = isLowPower
    ? "#F9D649"
    : isCharging
      ? "#34C759"
      : isCritical
        ? "#FF3B30"
        : systemPrimary;
  const bodyStartX = 2;
  const bodyStartY = 2.5;
  const bodyWidth = 21;
  const bodyHeight = 9;
  const bodyRadius = 1.33;
  const fillWidth = Math.max(0, Math.min(bodyWidth, (pct / 100) * bodyWidth));
  const displayValue = Math.round(pct);
  const digits = displayValue.toString().length;
  const fontSize = digits === 3 ? 8.2 : digits === 2 ? 9.2 : 10.0;
  const textX = bodyStartX + bodyWidth / 2;
  const textLength = digits === 3 ? 12 : undefined;
  const showInsideBolt = isCharging && !showPercent;
  const showPercentText = showPercent;
  const percentTextColor = isCharging ? "#FFFFFF" : (isLowPower || isCritical ? "#000000" : "#FFFFFF");
  const boltColor = systemFg;
  const renderForeground = () => (
    <>
      {showPercentText && (
        <text
          x={textX}
          y="7"
          fill={percentTextColor}
          fontFamily='-apple-system, "SF Pro Text", "Helvetica Neue", sans-serif'
          fontWeight={700}
          fontSize={fontSize}
          textAnchor="middle"
          dominantBaseline="central"
          textLength={textLength}
          lengthAdjust={textLength ? "spacingAndGlyphs" : undefined}
          style={{
            letterSpacing: digits === 3 ? "-0.2px" : "-0.15px",
            fontVariantNumeric: "tabular-nums",
            fontFeatureSettings: '"tnum" 1',
          }}
        >
          {displayValue}
        </text>
      )}
    </>
  );

  return (
    <svg width="28" height="14" viewBox="0 0 28 14" fill="none" aria-label="Battery">
      <defs>
        <clipPath id={clipBodyId}>
          <rect x={bodyStartX} y={bodyStartY} width={bodyWidth} height={bodyHeight} rx={bodyRadius} />
        </clipPath>
      </defs>

      {/* Outline */}
      <path
        opacity="0.4"
        fillRule="evenodd"
        clipRule="evenodd"
        d="M5.6 1.5H19.4C20.3966 1.5 21.0839 1.50078 21.6174 1.54436C22.1392 1.587 22.4251 1.66555 22.635 1.77248C23.1054 2.01217 23.4878 2.39462 23.7275 2.86502C23.8345 3.0749 23.913 3.36085 23.9556 3.88264C23.9992 4.4161 24 5.10341 24 6.1V7.9C24 8.89659 23.9992 9.5839 23.9556 10.1174C23.913 10.6392 23.8345 10.9251 23.7275 11.135C23.4878 11.6054 23.1054 11.9878 22.635 12.2275C22.4251 12.3345 22.1392 12.413 21.6174 12.4556C21.0839 12.4992 20.3966 12.5 19.4 12.5H5.6C4.60341 12.5 3.9161 12.4992 3.38264 12.4556C2.86085 12.413 2.5749 12.3345 2.36502 12.2275C1.89462 11.9878 1.51217 11.6054 1.27248 11.135C1.16555 10.9251 1.087 10.6392 1.04436 10.1174C1.00078 9.5839 1 8.89659 1 7.9V6.1C1 5.10341 1.00078 4.4161 1.04436 3.88264C1.087 3.36085 1.16555 3.0749 1.27248 2.86502C1.51217 2.39462 1.89462 2.01217 2.36502 1.77248C2.5749 1.66555 2.86085 1.587 3.38264 1.54436C3.9161 1.50078 4.60341 1.5 5.6 1.5ZM0 6.1C0 4.13982 0 3.15972 0.381477 2.41103C0.717034 1.75247 1.25247 1.21703 1.91103 0.881477C2.65972 0.5 3.63982 0.5 5.6 0.5H19.4C21.3602 0.5 22.3403 0.5 23.089 0.881477C23.7475 1.21703 24.283 1.75247 24.6185 2.41103C25 3.15972 25 4.13982 25 6.1V7.9C25 9.86018 25 10.8403 24.6185 11.589C24.283 12.2475 23.7475 12.783 23.089 13.1185C22.3403 13.5 21.3602 13.5 19.4 13.5H5.6C3.63982 13.5 2.65972 13.5 1.91103 13.1185C1.25247 12.783 0.717034 12.2475 0.381477 11.589C0 10.8403 0 9.86018 0 7.9V6.1ZM26 9C26.8284 8.8 27.5 8.10457 27.5 7C27.5 5.89543 26.8284 5.2 26 5L26 7L26 9Z"
        fill="#000"
      />

      {/* Body background */}
      <rect x={bodyStartX} y={bodyStartY} width={bodyWidth} height={bodyHeight} rx={bodyRadius} fill="#DFDFDF" />

      {/* Fill */}
      <g clipPath={`url(#${clipBodyId})`}>
        <rect x={bodyStartX} y={bodyStartY} width={fillWidth} height={bodyHeight} rx={bodyRadius} fill={fillColor} />
      </g>

      {/* Bolt renders once (no split/clip by fill), text keeps dynamic contrast */}
      {showInsideBolt && (
        <g>
          {/* White offset stroke behind bolt (extends into battery border) */}
          <path
            d="M8.64134 8.1664H12.0477L10.2663 12.7633C10.0095 13.4262 10.7075 13.7714 11.1598 13.24L16.6658 6.68159C16.7775 6.5501 16.8334 6.4186 16.8334 6.27615C16.8334 6.02411 16.6323 5.83783 16.3587 5.83783H12.9523L14.7281 1.23546C14.985 0.577982 14.287 0.227325 13.8402 0.758789L8.32863 7.31716C8.21694 7.45413 8.16669 7.58015 8.16669 7.7226C8.16669 7.98012 8.36772 8.1664 8.64134 8.1664Z"
            fill="none"
            stroke="#FFFFFF"
            strokeWidth="2"
            strokeLinejoin="round"
            strokeLinecap="round"
          />
          {/* Black bolt on top */}
          <path
            d="M8.64134 8.1664H12.0477L10.2663 12.7633C10.0095 13.4262 10.7075 13.7714 11.1598 13.24L16.6658 6.68159C16.7775 6.5501 16.8334 6.4186 16.8334 6.27615C16.8334 6.02411 16.6323 5.83783 16.3587 5.83783H12.9523L14.7281 1.23546C14.985 0.577982 14.287 0.227325 13.8402 0.758789L8.32863 7.31716C8.21694 7.45413 8.16669 7.58015 8.16669 7.7226C8.16669 7.98012 8.36772 8.1664 8.64134 8.1664Z"
            fill={boltColor}
          />
        </g>
      )}
      {/* Single-color percent text (no split) */}
      {showPercentText && (
        <g clipPath={`url(#${clipBodyId})`}>
          {renderForeground()}
        </g>
      )}
    </svg>
  );
};

// iOS Airplane — spec asset
const IosAirplane = () => (
  <img
    src="/ios-status/ios_airplane.svg"
    width={20}
    height={14}
    alt="Airplane"
    style={{ display: "block" }}
  />
);

const IosLocationIcon = ({ enabled }: { enabled: boolean }) => {
  if (!enabled) return null;
  return (
    <img
      src="/ios-status/ios_location_1.svg"
      width={11}
      height={11}
      alt="Location"
      style={{ display: "block" }}
    />
  );
};

/* ─── Carousel Dots (Ring style) ─── */
const CarouselDots = ({
  total = 5,
  active = 0,
  dotSize = 7,
  gap = 4.25,
}: {
  total?: number;
  active?: number;
  dotSize?: number;
  gap?: number;
}) => (
  <div className="flex justify-center items-center w-full" style={{ gap: `${gap}px` }}>
    {Array.from({ length: total }).map((_, i) => {
      const isActive = i === active;
      const stroke = Math.max(0.6, dotSize * 0.1143);
      const outerRadius = Math.max(0.8, dotSize / 2 - stroke / 2);
      const innerRadius = Math.max(0.7, dotSize * 0.2643);
      return (
        <div key={i} className="flex items-center justify-center" style={{ width: `${dotSize}px`, height: `${dotSize}px` }}>
          {isActive ? (
            <svg width={dotSize} height={dotSize} viewBox={`0 0 ${dotSize} ${dotSize}`}>
              <circle cx={dotSize / 2} cy={dotSize / 2} r={outerRadius} stroke="#8dc73f" strokeWidth={stroke} fill="white" />
              <circle cx={dotSize / 2} cy={dotSize / 2} r={innerRadius} fill="#8dc73f" />
            </svg>
          ) : (
            <svg width={dotSize} height={dotSize} viewBox={`0 0 ${dotSize} ${dotSize}`}>
              <circle cx={dotSize / 2} cy={dotSize / 2} r={outerRadius} stroke="#8dc73f" strokeWidth={stroke} fill="none" />
            </svg>
          )}
        </div>
      );
    })}
  </div>
);

export const TelebirrReceipt = ({
  data,
  isPreview = false,
  captureId,
}: {
  data: ReceiptData;
  isPreview?: boolean;
  captureId?: string;
}) => {
  const IOS_TIME_BASE_SIZE = 17 * (REFERENCE_WIDTH / 393);
  const IOS_TIME_BASE_TRACKING = -0.34 * (REFERENCE_WIDTH / 393);
  const config = devicePresets[data.preset] || devicePresets.test_accuracy;
  const os = config.os;
  const { width, height } = config;
  const canvasWidth = Number.parseInt(width, 10);
  const canvasHeight = Number.parseInt(height, 10);
  const uiScale = canvasWidth / REFERENCE_WIDTH;
  const scaleUi = (value: number) => Number((value * uiScale).toFixed(3));

  const notchType = data.cameraHoleOverride === "default"
    ? config.notch
    : (data.cameraHoleOverride === "left" ? "punch_left"
      : data.cameraHoleOverride === "center" ? "punch_center"
        : "none");
  const navType = data.navBarOverride === "default"
    ? config.nav
    : data.navBarOverride;
  const layoutNavType = navType === "hidden" ? config.nav : navType;
  const globalContentShiftY = os === "ios" ? (data.iphoneContentNudgeY ?? 0) : 0;
  // Keep receipt content anchored even when visual bottom-nav height is adjusted via slider.
  const layoutNavButtonsHeight = 42.5;

  const { sections: sectionLayout, subElements } = applyTweaks(
    computeReceiptLayout({
      os,
      navType: layoutNavType,
      canvasWidth,
      canvasHeight,
      navButtonsHeight: layoutNavButtonsHeight,
      safeAreaBottom: os === "ios" && layoutNavType === "home_indicator" ? (config as typeof devicePresets.iphone_modern).safeAreaBottom ?? 34 : 0,
      safeAreaPadding: os === "ios" && layoutNavType === "home_indicator" ? (config as typeof devicePresets.iphone_modern).safeAreaPadding ?? 16 : 0,
      tweaks: data.layoutTweaks,
    }),
    {
      os,
      navType: layoutNavType,
      canvasWidth,
      canvasHeight,
      navButtonsHeight: layoutNavButtonsHeight,
      safeAreaBottom: os === "ios" && layoutNavType === "home_indicator" ? (config as typeof devicePresets.iphone_modern).safeAreaBottom ?? 34 : 0,
      safeAreaPadding: os === "ios" && layoutNavType === "home_indicator" ? (config as typeof devicePresets.iphone_modern).safeAreaPadding ?? 16 : 0,
      tweaks: data.layoutTweaks,
    },
  );

  const sectionStyle = (section: SectionLayout) => ({
    position: "absolute" as const,
    left: `${section.x}px`,
    top: `${section.y}px`,
    width: `${section.width}px`,
    height: `${section.height}px`,
    transform: section.transform,
    transformOrigin: "top left",
  });

  const batteryNum = parseInt(data.battery) || 48;
  const displayTime = data.time.replace(/^0(?=\\d:)/, "");
  const signalFilled = data.airplaneMode ? 0 : (data.signalStrength ?? 4);
  const wifiStrength = data.wifiStrength ?? 3;
  const iosWifiEnabled = data.iosWifiEnabled ?? true;
  const iosShowWifi = !data.airplaneMode && iosWifiEnabled && !data.showMobileData;
  // Data label: shown on RIGHT side when mobile data is on, NOT airplane mode, and wifi is OFF
  const iosShowDataLabel = data.showMobileData && !data.airplaneMode;
  // iOS LEFT side extras (after time): Focus (DnD moon), then Location arrow
  // iOS RIGHT side extras (between data/signal and wifi/battery): VPN badge only
  const samsungStatusBackground = "#FFFFFF";
  const samsungStatusColor = "#1C1C1E";

  const samsungIconEnabled = data.samsungIconEnabled ?? ({} as Record<SamsungStatusIconFile, boolean>);
  const samsungAirplaneEnabled = Boolean(samsungIconEnabled["airplane_mode.jpg"]);
  const samsungShowWifi = data.samsungShowWifi ?? true;
  const samsungShowNetworkLabel = data.samsungShowNetworkLabel ?? true;
  const samsungShowSignal = data.samsungShowSignal ?? true;
  const samsungBatteryFile: SamsungBatteryIconFile = data.batteryCharging
    ? "battery_charging.jpg"
    : data.samsungBatteryIcon;
  const samsungStatusGap = 3;
  const systemGroupMargin = 2;
  const samsungRightMaxWidth = Math.round(
    canvasWidth * (notchType === "punch_center" ? 0.4 : notchType === "none" ? 0.6 : 0.55),
  );
  const samsungWifiStrength = data.wifiStrength ?? 3;
  const showWifiIcon = samsungShowWifi && !samsungAirplaneEnabled && samsungWifiStrength > 0;
  const showNetworkLabel = samsungShowNetworkLabel && !samsungAirplaneEnabled;
  const showSignalIcon = samsungShowSignal && !samsungAirplaneEnabled;
  const batteryLabel = `${batteryNum}%`;
  const batteryLabelWidth = Math.max(18, batteryLabel.length * 6.2);

  let batteryColor = samsungStatusColor;
  let showPowerLeaf = false;

  if (data.batteryCharging) {
    batteryColor = "#4cdc6b"; // Green
    if (data.iosLowPowerMode) showPowerLeaf = true;
  } else if (data.iosLowPowerMode) {
    batteryColor = "#fbbc05"; // Yellow
    showPowerLeaf = true;
  } else if (batteryNum <= 20) {
    batteryColor = "#fc4b43"; // Red
  }

  const baseIconWidths: number[] = [];
  if (showWifiIcon) baseIconWidths.push(14);
  if (showNetworkLabel) baseIconWidths.push(16);
  if (showSignalIcon) baseIconWidths.push(12);
  if (data.samsungShowBatteryPercent) baseIconWidths.push(batteryLabelWidth);
  baseIconWidths.push(12);
  const baseWidth = baseIconWidths.reduce(
    (sum, w, idx) => sum + w + (idx > 0 ? samsungStatusGap : 0),
    0,
  );

  const samsungSystemIconSize: Record<SamsungSystemToggleIconFile, { width: number; height: number }> = {
    "airplane_mode.jpg": { width: 12, height: 12 },
    "alarm.jpg": { width: 12, height: 12 },
    "bluetooth.jpg": { width: 11, height: 12 },
    "casting-activated.jpeg": { width: 12, height: 12 },
    "location.jpg": { width: 11, height: 12 },
    "mobile-hotspot-enabled.jpeg": { width: 12, height: 12 },
    "mute.jpg": { width: 12, height: 12 },
    "vpn-service-connected.jpeg": { width: 12, height: 12 },
  };

  const samsungSystemCandidates = SAMSUNG_SYSTEM_TOGGLE_ICON_FILES
    .filter((file) => samsungIconEnabled[file])
    .map((file) => ({
      file,
      width: samsungSystemIconSize[file].width,
      height: samsungSystemIconSize[file].height,
    }));
  const maxSystemIconsByNotch = notchType === "punch_center" ? 3 : notchType === "punch_left" ? 4 : 5;
  let systemWidth = 0;
  const visibleSystemCandidates: typeof samsungSystemCandidates = [];
  for (const candidate of samsungSystemCandidates) {
    if (visibleSystemCandidates.length >= maxSystemIconsByNotch) break;
    const nextWidth = systemWidth + (visibleSystemCandidates.length > 0 ? samsungStatusGap : 0) + candidate.width;
    const totalWidth = baseWidth + (nextWidth > 0 ? systemGroupMargin : 0) + nextWidth;
    if (totalWidth > samsungRightMaxWidth) break;
    visibleSystemCandidates.push(candidate);
    systemWidth = nextWidth;
  }
  const samsungSystemItems = visibleSystemCandidates.map((candidate) => (
    <SamsungFolderIcon
      key={`s-system-${candidate.file}`}
      file={candidate.file}
      color={samsungStatusColor}
      width={candidate.width}
      height={candidate.height}
    />
  ));

  const formatWithCommas = (value: string) => value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");

  // Parse amount: extract sign, integer part, decimal part
  const rawAmount = data.amount.toString().trim();
  const isNegative = rawAmount.startsWith("-");
  const absAmount = rawAmount.replace(/^-/, "");
  const parts = absAmount.replace(/[^0-9.]/g, "").split(".");
  const intPart = parts[0] || "0";
  const intPartFormatted = formatWithCommas(intPart);
  const decPart = (parts[1] || "00").slice(0, 2).padEnd(2, "0");
  const displayAmount = `${isNegative ? "-" : ""}${intPartFormatted}.`;

  const activeSamsungNotifs: { id: string; node: React.ReactNode; width: number }[] = [];
  const notifIconStyle = { marginLeft: "1px" };
  const notifIconSize = 13;
  const notifIconWidth = notifIconSize + 1;

  if (data.samsungNotifMessages) activeSamsungNotifs.push({ id: "sms", width: notifIconWidth, node: <MessageSquare size={notifIconSize} strokeWidth={2.6} fill={samsungStatusColor} color="transparent" style={notifIconStyle} /> });
  if (data.samsungNotifPhone) activeSamsungNotifs.push({ id: "phone", width: notifIconWidth, node: <Phone size={notifIconSize} strokeWidth={2.4} color={samsungStatusColor} style={notifIconStyle} /> });
  if (data.samsungNotifWhatsApp) activeSamsungNotifs.push({ id: "wa", width: notifIconWidth, node: <MessageCircle size={notifIconSize} strokeWidth={2.6} color={samsungStatusColor} style={notifIconStyle} /> });
  if (data.samsungNotifGmail) activeSamsungNotifs.push({ id: "mail", width: notifIconWidth, node: <Mail size={notifIconSize} strokeWidth={2.6} fill={samsungStatusColor} color="transparent" style={notifIconStyle} /> });
  if (data.samsungNotifDownload) activeSamsungNotifs.push({ id: "dl", width: notifIconWidth, node: <Download size={notifIconSize} strokeWidth={2.4} color={samsungStatusColor} style={notifIconStyle} /> });
  if (data.samsungNotifPlayStore) activeSamsungNotifs.push({ id: "play", width: notifIconWidth, node: <PlaySquare size={notifIconSize} strokeWidth={2.4} color={samsungStatusColor} style={notifIconStyle} /> });
  if (data.samsungNotifUsb) activeSamsungNotifs.push({ id: "usb", width: notifIconWidth, node: <Usb size={notifIconSize} strokeWidth={2.4} color={samsungStatusColor} style={notifIconStyle} /> });

  let visibleSamsungNotifs: React.ReactNode[] = [];
  const notifMode = data.samsungNotificationMode || "recent3";
  const samsungLeftMaxWidth = Math.round(
    canvasWidth * (notchType === "punch_center" ? 0.35 : notchType === "punch_left" ? 0.3 : 0.6)
  );
  
  // Base left width: clock + speed
  let currentLeftWidth = (data.time.length * 7) + (data.samsungShowNetworkSpeed ? 50 : 0);

  if (notifMode === "number" && activeSamsungNotifs.length > 0) {
    visibleSamsungNotifs = [(
      <SamsungStatusText key="notif-count" color={samsungStatusColor} fontSize="13px" fontWeight={600} style={{ marginLeft: "4px" }}>
        {activeSamsungNotifs.length}
      </SamsungStatusText>
    )];
  } else if (notifMode !== "none" && activeSamsungNotifs.length > 0) {
    const limit = notifMode === "recent3" ? 3 : 7;
    const candidates = activeSamsungNotifs.slice(0, limit);
    
    for (let i = 0; i < candidates.length; i++) {
      const nextWidth = currentLeftWidth + candidates[i].width + 2; // +gap
      if (nextWidth > samsungLeftMaxWidth) {
        // Show dot if we have more
        visibleSamsungNotifs.push(<div key="notif-dot" style={{ fontSize: "14px", fontWeight: "bold", color: samsungStatusColor, marginLeft: "2px", lineHeight: "10px" }}>•</div>);
        break;
      }
      visibleSamsungNotifs.push(<div key={candidates[i].id} style={{ display: "flex", alignItems: "center" }}>{candidates[i].node}</div>);
      currentLeftWidth = nextWidth;
    }
  }

  const ScreenContent = (
    <div
      id={captureId}
      className={cn(
        "bg-white w-full h-full relative flex flex-col select-none",
        config.font === "font-roboto" ? "font-['Roboto',sans-serif]" : "font-sans"
      )}
    >
      {/* Samsung OneUI 6.1 Status Bar (folder-driven icons) */}
      {os === "android" && (
        <div
          style={{
            height: "32px",
            width: "100%",
            display: "flex",
            alignItems: "center",
            justifyContent: "space-between",
            paddingLeft: "12px",
            paddingRight: "12px",
            paddingTop: "4px",
            boxSizing: "border-box",
            flexShrink: 0,
            zIndex: 10,
            backgroundColor: samsungStatusBackground,
            position: "relative",
          }}
        >
          {/* LEFT ZONE: Clock + Speed + Notifications */}
          <div
            style={{
              display: "flex",
              alignItems: "center",
              flexShrink: 0,
              marginLeft: notchType === "punch_left" ? "26px" : "2px",
              maxWidth: `${samsungLeftMaxWidth}px`,
              overflow: "hidden",
            }}
          >
            <SamsungStatusText
              color={samsungStatusColor}
              fontSize="13px"
              fontWeight={600}
              letterSpacing="-0.2px"
            >
              {displayTime}
            </SamsungStatusText>
            {data.samsungShowNetworkSpeed && (
              <SamsungStatusText
                color={samsungStatusColor}
                fontSize="12px"
                fontWeight={500}
                style={{ marginLeft: "4px" }}
              >
                ↓2.4 MB/s
              </SamsungStatusText>
            )}
            {visibleSamsungNotifs.length > 0 && (
              <div style={{ display: "flex", alignItems: "center", gap: "2px", marginLeft: "4px", paddingBottom: "1px" }}>
                {visibleSamsungNotifs}
              </div>
            )}
          </div>

          {/* PHYSICAL PUNCH HOLE (Visual only) */}
          {notchType === "punch_center" && (
            <div style={{ position: "absolute", left: "50%", transform: "translateX(-50%)", width: "18px", height: "18px", backgroundColor: "#000", borderRadius: "50%", marginTop: "1px", zIndex: 20 }} />
          )}

          {/* RIGHT ZONE: System Icons + Battery */}
          <div
            style={{
              display: "flex",
              alignItems: "center",
              gap: `${samsungStatusGap}px`,
              flexShrink: 1,
              minWidth: 0,
              maxWidth: `${samsungRightMaxWidth}px`,
              overflow: "hidden",
              justifyContent: "flex-end",
              marginLeft: "auto",
            }}
          >
            {samsungSystemItems.length > 0 && (
              <div style={{ display: "flex", alignItems: "center", gap: `${samsungStatusGap}px`, marginRight: `${systemGroupMargin}px` }}>
                {samsungSystemItems}
              </div>
            )}

            {showPowerLeaf && (
              <Leaf size={11} strokeWidth={2.4} color={samsungStatusColor} style={{ marginRight: "1px" }} />
            )}

            {!samsungAirplaneEnabled && (
              <>
                {showWifiIcon && (
                  <SamsungFolderIcon
                    file={data.samsungWifiIcon}
                    color={samsungStatusColor}
                    width={14}
                    height={10}
                  />
                )}
                {showNetworkLabel && (
                  <SamsungFolderIcon
                    file={data.samsungNetworkTypeIcon}
                    color={samsungStatusColor}
                    width={16}
                    height={10}
                  />
                )}
                {showSignalIcon && (
                  <SamsungFolderIcon
                    file={data.samsungSignalIcon}
                    color={samsungStatusColor}
                    width={12}
                    height={10}
                  />
                )}
                {(showSignalIcon && data.simCount === 2) && (
                  <SamsungFolderIcon
                    file={data.samsungSignalIcon}
                    color={samsungStatusColor}
                    width={12}
                    height={10}
                    style={{ marginLeft: "-2px" }} // Slightly overlap for dual sim look
                  />
                )}
              </>
            )}

            {data.samsungShowBatteryPercent && (
              <SamsungStatusText
                color={batteryColor}
                fontSize="11px"
                fontWeight={600}
                letterSpacing="-0.1px"
                style={{ marginLeft: "2px" }}
              >
                {batteryNum}%
              </SamsungStatusText>
            )}

            <SamsungFolderIcon
              file={samsungBatteryFile}
              color={batteryColor}
              width={12}
              height={12}
            />
          </div>
        </div>
      )}

      {/* iOS Status Bar — SF Pro Display, correct L/R ear layout per spec */}
      {os === "ios" && (
        <div className={cn(
          "h-[48px] w-full flex items-center justify-between shrink-0 z-10 bg-white",
          notchType === "dynamic_island" ? "px-[24px] pt-[14px]" : "px-[20px] pt-[10px]"
        )}>
          {/* LEFT EAR: Time → Focus (DnD) → Location */}
          <div className="flex items-center gap-[4px]">
            <div
              style={{
                fontFamily: '-apple-system, "SF Pro Text", "Helvetica Neue", sans-serif',
                fontWeight: 500,
                fontSize: `${scaleUi(IOS_TIME_BASE_SIZE)}px`,
                letterSpacing: `${scaleUi(IOS_TIME_BASE_TRACKING)}px`,
                lineHeight: 1,
                fontKerning: "normal",
                color: '#000',
                fontVariantNumeric: "proportional-nums",
                fontFeatureSettings: '"pnum" 1, "case" 1, "frac" 1',
              }}
            >
              {displayTime}
            </div>
            {/* Focus mode (DnD moon) — left of location, right of time */}
            {(data.iosDndMode ?? false) && (
              <svg width="11" height="11" viewBox="0 0 24 24" fill="#000" aria-label="Do Not Disturb">
                <path d="M14.38 3.36C19.49 3.36 23.63 0.28 25.46-3.64C25.86-4.46 25.34-5.02 24.55-4.77C23.68-4.48 22.25-4.20 20.93-4.20C13.90-4.20 9.87-8.23 9.87-15.27C9.87-16.59 10.16-18.08 10.58-19.15C10.92-20.02 10.32-20.54 9.49-20.18C5.29-18.35 2.10-14.05 2.10-8.92C2.10-2.13 7.61 3.36 14.38 3.36Z" transform="matrix(0.845 0 0 0.845 0.29 19.16)" />
              </svg>
            )}
            {/* Location arrow */}
            <IosLocationIcon enabled={data.showLocation} />
          </div>
          {/* RIGHT EAR: [VPN] [Signal/✈] [Dual SIM] [Wi-Fi] [Data] [Battery] — battery is rightmost */}
          <div className="flex items-center gap-[4px]">
            {/* VPN badge */}
            {false && (data.iosShowVpn ?? false) && !data.airplaneMode && (
              <div style={{
                border: '1px solid #000',
                borderRadius: '2px',
                padding: '0 2px',
                height: '11px',
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center',
                fontSize: '7px',
                fontWeight: 700,
                letterSpacing: '-0.1px',
                color: '#000',
                fontFamily: '-apple-system, "SF Pro Text", "Helvetica Neue", sans-serif',
              }}>VPN</div>
            )}
            {/* Signal bars or Airplane icon */}
            {data.airplaneMode
              ? <IosAirplane />
              : signalFilled <= 0 ? <IosSignalZero /> : (data.simCount === 2 ? <IosSignalDual /> : <IosSignalSingle />)
            }
            {/* Wi-Fi */}
            {iosShowWifi && <IosWifiIcon strength={wifiStrength} />}
            {/* Data type label — next to battery, only when wifi off and mobile data on */}
            {iosShowDataLabel && <IosNetworkIcon type={data.iosNetworkType} />}
            {/* Battery — rightmost */}
            <IosBattery
              percent={batteryNum}
              charging={data.batteryCharging}
              lowPowerMode={data.iosLowPowerMode ?? false}
              showPercent={data.iosBatteryPercent ?? false}
            />
          </div>
        </div>
      )}

      <div
        className="flex-1 w-full h-full flex flex-col relative overflow-hidden pointer-events-none"
        style={globalContentShiftY !== 0 ? { transform: `translateY(${globalContentShiftY}px)` } : undefined}
      >

        {/* Top Header Actions */}
        <div
          style={{
            ...sectionStyle(sectionLayout.topActions),
            paddingLeft: `${scaleUi(9)}px`,
            paddingRight: `${scaleUi(9)}px`,
          }}
          className="flex justify-between items-center"
        >
          <div className="flex items-center text-[#8dc73f]" style={{ gap: `${scaleUi(6)}px` }}>
            <Download
              size={scaleUi(data.downloadIconSize ?? 16)}
              strokeWidth={scaleUi(1.6)}
              style={{ transform: `translate(${scaleUi(data.downloadIconX ?? 0)}px, ${scaleUi(data.downloadIconY ?? 0)}px)` }}
            />
            <span
              className="font-normal tracking-tight leading-none"
              style={{ fontSize: `${scaleUi(13.5)}px`, marginTop: `${scaleUi(2)}px` }}
            >
              Download
            </span>
          </div>
          <div className="flex items-center text-[#8dc73f]" style={{ gap: `${scaleUi(6)}px` }}>
            <svg
              width={scaleUi(data.shareIconSize ?? 16)}
              height={scaleUi(data.shareIconSize ?? 16)}
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              strokeWidth={scaleUi(1.6)}
              strokeLinecap="round"
              strokeLinejoin="round"
              style={{ transform: `translate(${scaleUi(data.shareIconX ?? 0)}px, ${scaleUi(data.shareIconY ?? 0)}px)` }}
            >
              <circle cx="18" cy="5" r="3" />
              <circle cx="6" cy="12" r="3" />
              <circle cx="18" cy="19" r="3" />
              <line x1="8.59" y1="13.51" x2="15.42" y2="17.49" />
              <line x1="15.41" y1="6.51" x2="8.59" y2="10.49" />
            </svg>
            <span
              className="font-normal tracking-tight leading-none"
              style={{ fontSize: `${scaleUi(13.5)}px`, marginTop: `${scaleUi(2)}px` }}
            >
              Share
            </span>
          </div>
        </div>

        {/* Success Circle */}
        <div style={sectionStyle(sectionLayout.successBadge)} className="flex items-center justify-center">
          <div
            className="aspect-square flex-none bg-[#8dc73f] rounded-full flex items-center justify-center"
            style={{ width: `${scaleUi(44)}px`, height: `${scaleUi(44)}px` }}
          >
            <svg
              width={scaleUi(data.checkmarkSize ?? 22)}
              height={scaleUi(Math.round((data.checkmarkSize ?? 22) * 0.743))}
              viewBox="0 0 24 24"
              fill="none"
              stroke="white"
              strokeWidth={scaleUi(data.checkmarkStroke ?? 2.5)}
              strokeLinecap="round"
              strokeLinejoin="round"
              style={{ transform: `translate(${scaleUi(data.checkmarkIconX ?? 0)}px, ${scaleUi(data.checkmarkIconY ?? 0)}px)` }}
            >
              <polyline points="20 6 9 17 4 12" />
            </svg>
          </div>
        </div>

        {/* Success Text */}
        <div style={sectionStyle(sectionLayout.successText)} className="flex items-center justify-center">
          <span className="text-[#8dc73f] font-[410] tracking-[-0.21px] leading-none" style={{ fontSize: `${scaleUi(13.5)}px` }}>
            Successful
          </span>
        </div>

        {/* Amount */}
        <div style={sectionStyle(sectionLayout.amountBlock)} className="flex items-baseline justify-center gap-1">
          <div
            className="flex items-baseline"
            style={{ transform: "translateY(-0.5px) translateX(-1.5px) scaleX(0.96) scaleY(0.94)", transformOrigin: "bottom right" }}
          >
            <span
              className="font-normal text-[#111] tracking-normal leading-none"
              style={{
                fontSize: `${scaleUi(data.amountFontSize ?? 31.5)}px`,
                WebkitTextStroke: `${scaleUi(data.amountStroke ?? 1.1)}px currentColor`,
                transform: `translateX(${scaleUi(2)}px) translateY(${scaleUi(-0.3)}px)`,
                display: "inline-block",
              }}
            >
              {displayAmount}
            </span>
            <span
              className="font-normal text-[#111] tracking-normal leading-none"
              style={{
                fontSize: `${scaleUi(data.amountFontSize ?? 31.5)}px`,
                WebkitTextStroke: `${scaleUi(data.amountStroke ?? 1.1)}px currentColor`,
                transform: `translateX(${scaleUi(0.8)}px) translateY(${scaleUi(-0.2)}px)`,
                display: "inline-block",
              }}
            >
              {decPart}
            </span>
          </div>
          <span
            className="font-normal text-[#111] leading-none"
            style={{
              fontSize: `${scaleUi(11)}px`,
              WebkitTextStroke: `${scaleUi(0.55)}px currentColor`,
              transform: `translateX(${scaleUi(-0.7)}px) translateY(${scaleUi(-0.5)}px)`,
              display: "inline-block",
            }}
          >
            (ETB)
          </span>
        </div>

        {/* Divider */}
        <div style={sectionStyle(sectionLayout.divider)} className="bg-[#e6e6e6] opacity-60" />

        {/* Transaction Table Rows */}
        <div style={{ ...sectionStyle(sectionLayout.tableBlock), gap: `${scaleUi(12)}px` }} className="flex flex-col" >
          <div className="w-full flex justify-between items-center">
            <span
              className="text-[#8f8f8f] tracking-[-0.2px] whitespace-nowrap"
              style={{
                fontSize: `${scaleUi(data.tableKeySize ?? 11)}px`,
                fontWeight: data.tableKeyWeight ?? 600,
                WebkitTextStroke: `${scaleUi(data.tableKeyStroke ?? 0.1)}px currentColor`,
                transform: `translate(${scaleUi(data.tableKeyColumnX ?? 0)}px, ${scaleUi(data.tableKeyColumnY ?? 0)}px)`,
                display: "inline-block",
              }}
            >
              Transaction Time:
            </span>
            <span
              className="text-[#111] tracking-[-0.12px] whitespace-nowrap text-right"
              style={{
                width: `${scaleUi(132)}px`,
                fontSize: `${scaleUi(data.tableValSize ?? 11.2)}px`,
                fontWeight: data.tableValWeight ?? 400,
                WebkitTextStroke: `${scaleUi(data.tableValStroke ?? 0)}px currentColor`,
                transform: `translate(${scaleUi(data.tableValColumnX ?? 0)}px, ${scaleUi(0.8 + (data.tableValColumnY ?? 0))}px)`,
                display: "inline-block",
              }}
            >
              {data.transactionTime}
            </span>
          </div>

          <div className="w-full flex justify-between items-center">
            <span
              className="text-[#8f8f8f] tracking-[-0.2px] whitespace-nowrap"
              style={{
                fontSize: `${scaleUi(data.tableKeySize ?? 11)}px`,
                fontWeight: data.tableKeyWeight ?? 600,
                WebkitTextStroke: `${scaleUi(data.tableKeyStroke ?? 0.1)}px currentColor`,
                transform: `translate(${scaleUi(data.tableKeyColumnX ?? 0)}px, ${scaleUi(data.tableKeyColumnY ?? 0)}px)`,
                display: "inline-block",
              }}
            >
              Transaction Type:
            </span>
            <span
              className="text-[#111] tracking-[-0.12px] whitespace-nowrap text-right"
              style={{
                width: `${scaleUi(132)}px`,
                fontSize: `${scaleUi(data.tableValSize ?? 11.2)}px`,
                fontWeight: data.tableValWeight ?? 400,
                WebkitTextStroke: `${scaleUi(data.tableValStroke ?? 0)}px currentColor`,
                transform: `translate(${scaleUi(data.tableValColumnX ?? 0)}px, ${scaleUi(0.8 + (data.tableValColumnY ?? 0))}px)`,
                display: "inline-block",
              }}
            >
              {data.transactionType}
            </span>
          </div>

          <div className="w-full flex justify-between items-center">
            <span
              className="text-[#8f8f8f] tracking-[-0.2px] whitespace-nowrap"
              style={{
                fontSize: `${scaleUi(data.tableKeySize ?? 11)}px`,
                fontWeight: data.tableKeyWeight ?? 600,
                WebkitTextStroke: `${scaleUi(data.tableKeyStroke ?? 0.1)}px currentColor`,
                transform: `translate(${scaleUi(data.tableKeyColumnX ?? 0)}px, ${scaleUi(data.tableKeyColumnY ?? 0)}px)`,
                display: "inline-block",
              }}
            >
              Transaction To:
            </span>
            <span
              className="text-[#111] tracking-[-0.12px] whitespace-nowrap text-right"
              style={{
                width: `${scaleUi(132)}px`,
                fontSize: `${scaleUi(data.tableValSize ?? 11.2)}px`,
                fontWeight: data.tableValWeight ?? 400,
                WebkitTextStroke: `${scaleUi(data.tableValStroke ?? 0)}px currentColor`,
                transform: `translate(${scaleUi(data.tableValColumnX ?? 0)}px, ${scaleUi(0.8 + (data.tableValColumnY ?? 0))}px)`,
                display: "inline-block",
              }}
            >
              {data.transactionTo}
            </span>
          </div>

          <div className="w-full flex justify-between items-center">
            <span
              className="text-[#8f8f8f] tracking-[-0.2px] whitespace-nowrap"
              style={{
                fontSize: `${scaleUi(data.tableKeySize ?? 11)}px`,
                fontWeight: data.tableKeyWeight ?? 600,
                WebkitTextStroke: `${scaleUi(data.tableKeyStroke ?? 0.1)}px currentColor`,
                transform: `translate(${scaleUi(data.tableKeyColumnX ?? 0)}px, ${scaleUi(data.tableKeyColumnY ?? 0)}px)`,
                display: "inline-block",
              }}
            >
              Transaction Number:
            </span>
            <span
              className="text-[#111] tracking-[-0.12px] whitespace-nowrap text-right"
              style={{
                width: `${scaleUi(132)}px`,
                fontSize: `${scaleUi(data.tableValSize ?? 11.2)}px`,
                fontWeight: data.tableValWeight ?? 400,
                WebkitTextStroke: `${scaleUi(data.tableValStroke ?? 0)}px currentColor`,
                transform: `translate(${scaleUi(data.tableValColumnX ?? 0)}px, ${scaleUi(0.8 + (data.tableValColumnY ?? 0))}px)`,
                display: "inline-block",
              }}
            >
              {data.transactionNumber}
            </span>
          </div>
        </div>

        <div style={sectionStyle(sectionLayout.qrRow)} className="text-[#8dc73f] relative overflow-visible">
          {/* Arrow */}
          <div
            style={{
              width: `${scaleUi(data.qrArrowWidth ?? 14.5)}px`,
              height: `${scaleUi(data.qrArrowHeight ?? 19)}px`,
              position: "absolute",
              right: "0px",
              top: "50%",
              transform: `translateY(-50%) translate(${subElements.qrArrow.x}px, ${subElements.qrArrow.y}px)`,
            }}
          >
            <svg width="100%" height="100%" viewBox="0 0 100 100" fill="none" stroke="currentColor" strokeWidth={scaleUi(data.qrArrowStroke ?? 2.4)} strokeLinecap="square" strokeLinejoin="miter" preserveAspectRatio="none" style={{ overflow: "visible" }}>
              <polyline points="0 0 100 50 0 100" vectorEffect="non-scaling-stroke" />
            </svg>
          </div>
          {/* Text */}
          <span
            className="tracking-[-0.3px] leading-none whitespace-nowrap"
            style={{
              fontSize: `${scaleUi(data.qrFontSize ?? 14.2)}px`,
              fontWeight: data.qrTextWeight ?? 600,
              WebkitTextStroke: `${scaleUi(data.qrTextStroke ?? 0)}px currentColor`,
              position: "absolute",
              right: `${scaleUi(24)}px`,
              top: "50%",
              transform: `translateY(-50%) translate(${subElements.qrText.x}px, ${subElements.qrText.y}px)`,
            }}
          >QR Code</span>
          {/* Icon */}
          <img
            src="/Asset/qr code icon.svg"
            alt="QR Code Icon"
            style={{
              width: `${scaleUi(data.qrIconWidth ?? 24)}px`,
              height: `${scaleUi(data.qrIconHeight ?? 28)}px`,
              position: "absolute",
              right: `${scaleUi(88)}px`,
              top: "50%",
              transform: `translateY(-50%) translate(${subElements.qrIcon.x}px, ${subElements.qrIcon.y}px)`,
              maxWidth: "none",
            }}
          />
        </div>

        {/* Banner Carousel */}
        <div style={sectionStyle(sectionLayout.banner)} className="flex justify-center">
          <div className="w-full h-full rounded-[13px] overflow-hidden bg-[#f9faf8] border border-[#f0f3ec] shrink-0">
            {getBannerSrc(data.bannerIndex) ? (
              <img src={getBannerSrc(data.bannerIndex)} alt="Banner" className="w-full h-full object-cover" />
            ) : (
              <div className="w-full h-full bg-[#f3f7f4]" />
            )}
          </div>
        </div>

        {/* Dots */}
        <div style={sectionStyle(sectionLayout.dots)} className="flex justify-center items-center">
          <CarouselDots active={Math.max(0, data.bannerIndex - 1)} total={5} dotSize={scaleUi(data.dotSize ?? 7.5)} gap={scaleUi(4.25)} />
        </div>

        {/* Finished Button */}
        <div style={sectionStyle(sectionLayout.finishedButton)} className="flex justify-center">
          <div
            className="bg-[#8dc73f] text-white font-semibold tracking-wide flex items-center justify-center"
            style={{
              width: `${scaleUi(160)}px`,
              height: `${scaleUi(35)}px`,
              borderRadius: `${scaleUi(8)}px`,
            }}
          >
            <span style={{ fontSize: `${scaleUi(data.finishedTextSize ?? 13)}px`, lineHeight: 1, display: "inline-block" }}>Finished</span>
          </div>
        </div>
      </div>

      {/* FIXED FOOTER */}
      {navType !== "hidden" && (
        <div className="shrink-0 bg-white">
          {navType === "buttons" && (
            <div
              className="w-full bg-black flex items-center justify-around px-8 border-t border-white/5"
              style={{ height: `${data.bottomNavHeight ?? 42.5}px` }}
            >
              {/* Recent Apps — Samsung One UI: separated paths */}
              <svg
                width={data.navIconSize ?? 20}
                height={data.navIconSize ?? 20}
                viewBox="0 0 66 66"
                fill="none"
                opacity="0.85"
                style={{ transform: `translate(${data.bottomNavIconsX ?? 0}px, ${data.bottomNavIconsY ?? 0}px)` }}
              >
                <path fill="white" d="M33,10.5c-1.7,0 -3,1.3 -3,3v39c0,1.7 1.3,3 3,3s3,-1.3 3,-3v-39C36,11.8 34.7,10.5 33,10.5z" />
                <path fill="white" d="M51,10.5c-1.7,0 -3,1.3 -3,3v39c0,1.7 1.3,3 3,3s3,-1.3 3,-3v-39C54,11.8 52.7,10.5 51,10.5z" />
                <path fill="white" d="M15,10.5c-1.7,0 -3,1.3 -3,3v39c0,1.7 1.3,3 3,3s3,-1.3 3,-3v-39C18,11.8 16.7,10.5 15,10.5z" />
              </svg>
              {/* Home — Samsung One UI: curve outline */}
              <svg
                width={data.navIconSize ?? 20}
                height={data.navIconSize ?? 20}
                viewBox="0 0 66 66"
                fill="white"
                opacity="0.85"
                style={{ transform: `translate(${data.bottomNavIconsX ?? 0}px, ${data.bottomNavIconsY ?? 0}px)` }}
              >
                <path d="M52.2,13.8C49.4,11 45.4,9 37.7,9h-9.3c-7.7,0 -11.7,2 -14.5,4.8s-4.8,6.8 -4.8,14.5v9.3c0,7.7 2,11.7 4.8,14.5s6.8,4.8 14.5,4.8h9.3c7.7,0 11.7,-2 14.5,-4.8S57,45.3 57,37.6v-9.3C57,20.6 55,16.7 52.2,13.8zM51,37.3c0,6.3 -1.6,8.8 -3.2,10.4s-4.1,3.2 -10.4,3.2h-8.7c-6.3,0 -8.8,-1.6 -10.4,-3.2s-3.2,-4.1 -3.2,-10.4v-8.7c0,-6.3 1.6,-8.8 3.2,-10.4S22.4,15 28.7,15h8.7c6.3,0 8.8,1.6 10.4,3.2c1.6,1.6 3.2,4.1 3.2,10.4C51,28.6 51,37.3 51,37.3z" />
              </svg>
              {/* Back — Samsung One UI: left-pointing chevron */}
              {/* Back — Samsung One UI: left-pointing chevron */}
              <svg
                width={data.navIconSize ?? 20}
                height={data.navIconSize ?? 20}
                viewBox="0 0 66 66"
                fill="none"
                opacity="0.85"
                style={{ transform: `translate(${data.bottomNavIconsX ?? 0}px, ${data.bottomNavIconsY ?? 0}px)` }}
              >
                <path fill="white" d="M27.1,33l17.4,-17.4c0.5,-0.5 0.9,-1.3 0.9,-2.1c0,-1.7 -1.3,-3 -3,-3c-0.8,0 -1.6,0.3 -2.1,0.9L18.6,33l21.6,21.6c0.5,0.5 1.3,0.9 2.1,0.9c1.7,0 3,-1.3 3,-3c0,-0.8 -0.3,-1.6 -0.9,-2.1L27.1,33z" />
              </svg>
            </div>
          )}

          {navType === "home_indicator" && (
            <div
              className="w-full flex justify-center bg-white box-border"
              style={{
                height: `${os === "ios" ? ((config as typeof devicePresets.iphone_modern).safeAreaBottom ?? 34) : 24}px`,
                paddingBottom: "8px",
                alignItems: "flex-end",
              }}
            >
              <div className="w-[144px] h-[5px] bg-black rounded-full" />
            </div>
          )}

          {navType === "gestures" && (
            <div className="h-[24px] w-full flex justify-center py-[10px] bg-white">
              <div className="w-[100px] h-[4px] bg-black/20 rounded-full" />
            </div>
          )}
        </div>
      )}
    </div>
  );

  if (!isPreview) return ScreenContent;

  /* ─── Preview Wrapper with Phone Frame ─── */
  const isIos = os === "ios";
  const frameScale = 0.75;
  const framePad = isIos ? 24 : 20;
  const frameWidth = `calc(${width} + ${framePad}px)`;
  const frameHeight = `calc(${height} + ${framePad}px)`;

  return (
    <div className="relative w-full h-full flex items-center justify-center">
      <div
        className="flex items-center justify-center origin-center transition-transform duration-300"
        style={{
          transform: `scale(${frameScale})`,
          width: frameWidth,
          height: frameHeight,
        }}
      >
        <div
          className={cn(
            "relative bg-black transition-all shrink-0",
            isIos ? "rounded-[55px] p-[12px]" : "rounded-[28px] p-[10px]"
          )}
          style={{
            width: `calc(${width} + ${isIos ? "24px" : "20px"})`,
            height: `calc(${height} + ${isIos ? "24px" : "20px"})`,
          }}
        >
          <div
            className={cn(
              "bg-white h-full w-full overflow-hidden relative",
              isIos ? "rounded-[45px]" : "rounded-[18px]"
            )}
          >
            {notchType === "punch_center" && (
              <div className="absolute top-[12px] left-1/2 -translate-x-1/2 w-[16px] h-[16px] bg-black rounded-full z-40 pointer-events-none" />
            )}

            {notchType === "punch_left" && (
              <div className="absolute top-[8px] left-[18px] w-[18.5px] h-[18.5px] bg-black rounded-full z-40 pointer-events-none" />
            )}

            {notchType === "dynamic_island" && (
              <div className="absolute top-[10px] left-1/2 -translate-x-1/2 w-[120px] h-[35px] bg-black rounded-full z-40 pointer-events-none" />
            )}

            {ScreenContent}
          </div>

          {isIos && (
            <>
              <div className="absolute left-[-2px] top-[140px] w-[3px] h-[50px] bg-[#1a1a1a] rounded-l-md" />
              <div className="absolute left-[-2px] top-[200px] w-[3px] h-[50px] bg-[#1a1a1a] rounded-l-md" />
              <div className="absolute right-[-2px] top-[180px] w-[3px] h-[80px] bg-[#1a1a1a] rounded-r-md" />
            </>
          )}
        </div>
      </div>
    </div>
  );
};
