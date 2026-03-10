import { cn } from "../utils/cn";
import { Download } from "lucide-react";
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
  iphone_modern: { os: "ios", notch: "dynamic_island", font: "font-roboto", nav: "home_indicator", width: "390px", height: "844px" },
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
  showBluetooth: boolean;
  silentMode: boolean;
  showLocation: boolean;
  showVolte: boolean;
  showMobileData: boolean;
  iosNetworkType: "5G" | "5G+" | "LTE" | "4G" | "3G" | "E";
  airplaneMode: boolean;
  showAlarm: boolean;
  showNfc: boolean;
  showHotspot: boolean;
  use12HourFormat: boolean;
  samsungOneUiEra: "oneui6" | "oneui8plus";
  samsungNotificationMode: "all" | "recent3" | "number" | "none";
  samsungShowBatteryPercent: boolean;
  samsungShowNetworkLabel: boolean;
  samsungShowWifi: boolean;
  samsungShowSignal: boolean;
  samsungShowSim2Signal: boolean;
  samsungNetworkTypeSim1: "5G" | "LTE" | "4G" | "H+" | "H" | "3G" | "E";
  samsungNetworkTypeSim2: "5G" | "LTE" | "4G" | "H+" | "H" | "3G" | "E";
  samsungActiveDataSim: 1 | 2;
  samsungNotifMessages: boolean;
  samsungNotifPhone: boolean;
  samsungNotifWhatsApp: boolean;
  samsungNotifGmail: boolean;
  samsungNotifDownload: boolean;
  samsungNotifPlayStore: boolean;
  samsungNotifUsb: boolean;
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

// iOS signal bars: filled solid rects, inactive = 30% opacity (NOT outlines)
const IosSignalBars = ({ filled = 4 }: { filled?: number }) => (
  <svg width="17" height="12" viewBox="0 0 17 12" fill="none">
    <rect x="0" y="9" width="3" height="3" rx="0.75" fill="#000" opacity={filled >= 1 ? 1 : 0.3} />
    <rect x="4.7" y="6.5" width="3" height="5.5" rx="0.75" fill="#000" opacity={filled >= 2 ? 1 : 0.3} />
    <rect x="9.3" y="3.5" width="3" height="8.5" rx="0.75" fill="#000" opacity={filled >= 3 ? 1 : 0.3} />
    <rect x="14" y="0" width="3" height="12" rx="0.75" fill="#000" opacity={filled >= 4 ? 1 : 0.3} />
  </svg>
);

// iOS WiFi: 3 stroke arcs + dot, inactive arcs at 25% opacity
const IosWifiIcon = ({ strength = 3 }: { strength?: number }) => (
  <svg width="16" height="13" viewBox="0 -1 20 16" fill="none">
    <circle cx="10" cy="14" r="1.5" fill="#000" />
    <path d="M6.8 10.8C7.9 9.6 8.9 9 10 9s2.1 0.6 3.2 1.8"
      stroke="#000" strokeWidth="1.8" strokeLinecap="round" fill="none"
      opacity={strength >= 1 ? 1 : 0.25} />
    <path d="M3.8 7.6C5.6 5.5 7.7 4.4 10 4.4s4.4 1.1 6.2 3.2"
      stroke="#000" strokeWidth="1.8" strokeLinecap="round" fill="none"
      opacity={strength >= 2 ? 1 : 0.25} />
    <path d="M0.8 4.4C3.5 1.3 6.6 0 10 0s6.5 1.3 9.2 4.4"
      stroke="#000" strokeWidth="1.8" strokeLinecap="round" fill="none"
      opacity={strength >= 3 ? 1 : 0.25} />
  </svg>
);

// iOS Battery — horizontal, outlined body, filled level, right nub, charging bolt
const IosBattery = ({ percent, charging = false }: { percent: number; charging?: boolean }) => {
  const pct = Math.min(100, Math.max(0, percent));
  const fillColor = pct <= 20 ? '#ff3b30' : '#000';
  const fillW = Math.round((pct / 100) * 19);
  return (
    <svg width="27" height="13" viewBox="0 0 27 13" fill="none">
      {/* body outline */}
      <rect x="0.75" y="0.75" width="22.5" height="11.5" rx="3.25"
        stroke="#000" strokeWidth="1" strokeOpacity="0.35" />
      {/* terminal nub */}
      <rect x="23.75" y="4" width="2.5" height="5" rx="1.25"
        fill="#000" fillOpacity="0.4" />
      {/* fill level */}
      <rect x="2" y="2" width={fillW} height="9" rx="2" fill={fillColor} />
      {charging && (
        <path d="M12.5 2.5L9.5 7h3l-1.5 3.5L15 6h-3l1.5-3.5z" fill="white" />
      )}
    </svg>
  );
};

// iOS Bluetooth — SF Symbols style (native-like spine + crossing chevrons)
const IosBluetooth = () => (
  <svg width="10" height="14" viewBox="0 0 12 16" fill="none"
    stroke="#000" strokeWidth="1.75" strokeLinecap="round" strokeLinejoin="round" aria-label="Bluetooth">
    <path d="M6 1.2V14.8" />
    <path d="M6 8L2.4 4.9" />
    <path d="M6 8L2.4 11.1" />
    <path d="M6 8L9.6 4.6L6 1.6" />
    <path d="M6 8L9.6 11.4L6 14.4" />
  </svg>
);

// iOS Airplane — SF Symbols filled plane silhouette, 45° tilt
const IosAirplane = () => (
  <svg width="13" height="13" viewBox="0 0 24 24" fill="#000">
    <path d="M21 16v-2l-8-5V3.5C13 2.67 12.33 2 11.5 2S10 2.67 10 3.5V9l-8 5v2l8-2.5V19l-2 1.5V22l3.5-1 3.5 1v-1.5L13 19v-5.5l8 2.5z" />
  </svg>
);

// iOS Alarm — SF Symbols clock/alarm filled style
const IosAlarm = () => (
  <svg width="13" height="13" viewBox="0 0 24 24" fill="none">
    <circle cx="12" cy="13" r="8" fill="#000" />
    <path d="M12 9v4.5l2.5 2.5" stroke="white" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
    <path d="M6.5 3.5L4 6" stroke="#000" strokeWidth="1.8" strokeLinecap="round" />
    <path d="M17.5 3.5L20 6" stroke="#000" strokeWidth="1.8" strokeLinecap="round" />
  </svg>
);

// iOS Location Arrow (SF Symbols style)
const IosLocationArrow = () => (
  <svg width="9" height="9" viewBox="0 0 12 12" fill="none" aria-label="Location">
    <path d="M10.7 1.2 2.5 5a.6.6 0 0 0 0 1l3 1.3 1.3 3a.6.6 0 0 0 1 0L11.6 2a.8.8 0 0 0-.9-.8Z" fill="#000" />
  </svg>
);

// iOS Personal Hotspot indicator
const IosHotspot = () => (
  <svg width="11" height="11" viewBox="0 0 16 16" fill="none" aria-label="Hotspot">
    <path d="M5.4 10.4a2.7 2.7 0 0 1 0-3.8L6.8 5.2a2.7 2.7 0 1 1 3.8 3.8l-1 1" stroke="#000" strokeWidth="1.3" strokeLinecap="round" />
    <path d="M10.4 5.6a2.7 2.7 0 0 1 0 3.8L9.2 10.8a2.7 2.7 0 1 1-3.8-3.8l1.2-1.2" stroke="#000" strokeWidth="1.3" strokeLinecap="round" />
  </svg>
);

const IosDataLabel = ({ type = "5G" }: { type?: string }) => (
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
      tweaks: data.layoutTweaks,
    }),
    {
      os,
      navType: layoutNavType,
      canvasWidth,
      canvasHeight,
      navButtonsHeight: layoutNavButtonsHeight,
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
  const signalFilled = data.airplaneMode ? 0 : (data.signalStrength ?? 4);
  const wifiStrength = data.wifiStrength ?? 3;
  const iosShowDataLabel = data.showMobileData && !data.airplaneMode && (data.wifiStrength ?? 0) === 0;
  const iosStatusExtras = (
    [
      iosShowDataLabel ? <IosDataLabel key="ios-data" type={data.iosNetworkType} /> : null,
      data.showAlarm ? <IosAlarm key="ios-alarm" /> : null,
      data.showBluetooth && !data.airplaneMode ? <IosBluetooth key="ios-bt" /> : null,
      data.showHotspot && !data.airplaneMode ? <IosHotspot key="ios-hotspot" /> : null,
    ].filter(Boolean) as JSX.Element[]
  ).slice(0, notchType === "dynamic_island" ? 2 : 3);
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
  const showNetworkLabel = samsungShowNetworkLabel && !samsungAirplaneEnabled && !showWifiIcon;
  const showSignalIcon = samsungShowSignal && !samsungAirplaneEnabled;
  const batteryLabel = `${batteryNum}%`;
  const batteryLabelWidth = Math.max(18, batteryLabel.length * 6.2);
  const batteryColor = samsungStatusColor;
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

  // Parse amount: extract sign, integer part, decimal part
  const rawAmount = data.amount.toString().trim();
  const isNegative = rawAmount.startsWith("-");
  const absAmount = rawAmount.replace(/^-/, "");
  const parts = absAmount.replace(/[^0-9.]/g, "").split(".");
  const intPart = parts[0] || "0";
  const decPart = (parts[1] || "00").slice(0, 2).padEnd(2, "0");
  const displayAmount = `${isNegative ? "-" : ""}${intPart}.`;

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
          <div
            style={{
              display: "flex",
              alignItems: "center",
              flexShrink: 0,
              marginLeft: notchType === "punch_left" ? "26px" : "2px",
            }}
          >
            <SamsungStatusText
              color={samsungStatusColor}
              fontSize="13px"
              fontWeight={600}
              letterSpacing="-0.2px"
            >
              {data.time}
            </SamsungStatusText>
          </div>

          {notchType === "punch_center" && (
            <div style={{ flexGrow: 1, minWidth: "32px" }} />
          )}

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
              marginLeft: notchType === "punch_center" ? "0" : "auto",
            }}
          >
            {samsungSystemItems.length > 0 && (
              <div style={{ display: "flex", alignItems: "center", gap: `${samsungStatusGap}px`, marginRight: `${systemGroupMargin}px` }}>
                {samsungSystemItems}
              </div>
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
              </>
            )}

            {data.samsungShowBatteryPercent && (
              <SamsungStatusText
                color={samsungStatusColor}
                fontSize="11px"
                fontWeight={600}
                letterSpacing="-0.1px"
              >
                {batteryLabel}
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

      {/* iOS Status Bar — SF Pro Display Semibold, correct icon geometry */}
      {os === "ios" && (
        <div className={cn(
          "h-[48px] w-full flex items-center justify-between shrink-0 z-10 bg-white",
          notchType === "dynamic_island" ? "px-[24px] pt-[14px]" : "px-[20px] pt-[10px]"
        )}>
          <div className="flex items-center gap-[4px]">
            <div
              style={{
                fontFamily: '-apple-system, "SF Pro Display", "Helvetica Neue", sans-serif',
                fontWeight: 600,
                fontSize: '15px',
                letterSpacing: '-0.3px',
                color: '#000',
                fontVariantNumeric: "tabular-nums",
                fontFeatureSettings: '"tnum" 1',
              }}
            >
              {data.time}
            </div>
            {data.showLocation && <IosLocationArrow />}
          </div>
          <div className="flex items-center gap-[4px]">
            {iosStatusExtras}
            {data.airplaneMode
              ? <IosAirplane />
              : <IosSignalBars filled={signalFilled} />
            }
            {wifiStrength > 0 && !data.airplaneMode && <IosWifiIcon strength={wifiStrength} />}
            <IosBattery percent={batteryNum} charging={data.batteryCharging} />
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
            <div className="h-[24px] w-full flex justify-center py-[10px] bg-white">
              <div className="w-[130px] h-[5px] bg-black/10 rounded-full" />
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
  const frameScale = 0.8;

  return (
    <div className="relative w-full h-full bg-gray-100 flex items-center justify-center overflow-hidden p-4 md:p-6">
      <div
        className="flex items-center justify-center origin-center transition-transform duration-300"
        style={{
          transform: `scale(${frameScale})`,
          width: width,
          height: height,
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

            {notchType === "notch" && (
              <div className="absolute top-0 left-1/2 -translate-x-1/2 w-[166px] h-[32px] bg-black rounded-b-[24px] z-40 pointer-events-none" />
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
