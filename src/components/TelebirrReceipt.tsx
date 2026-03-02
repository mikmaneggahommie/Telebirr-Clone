import { cn } from "../utils/cn";
import { Download } from "lucide-react";
import {
  applyTweaks,
  computeReceiptLayout,
  ReceiptLayoutTweaks,
  SectionLayout,
} from "./layout/receiptLayout";

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
  iphone_modern: { os: "ios", notch: "dynamic_island", font: "font-sans", nav: "home_indicator", width: "390px", height: "844px" },
  iphone_classic: { os: "ios", notch: "notch", font: "font-sans", nav: "home_indicator", width: "375px", height: "812px" },
  samsung: { os: "android", notch: "punch_center", font: "font-roboto", nav: "buttons", width: "360px", height: "800px" },
  generic_android: { os: "android", notch: "punch_left", font: "font-roboto", nav: "buttons", width: "360px", height: "780px" },
  test_accuracy: { os: "android", notch: "punch_left", font: "font-roboto", nav: "buttons", width: "360px", height: "780px" },
} as const;

export type PresetKey = keyof typeof devicePresets;

export interface ReceiptData {
  preset: PresetKey;
  cameraHoleOverride: "default" | "left" | "center" | "none";
  navBarOverride: "default" | "gestures" | "buttons" | "hidden";
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
  airplaneMode: boolean;
  showAlarm: boolean;
  showNfc: boolean;
  use12HourFormat: boolean;
  layoutTweaks?: ReceiptLayoutTweaks;
}

// ─── Android (One UI–style) Status Icons ───

// Signal bars: 0–4 filled bars
const AndroidSignalBars = ({ filled = 4 }: { filled?: number }) => (
  <svg width="11" height="10" viewBox="0 0 16 14" fill="none">
    <rect x="0" y="10" width="2.2" height="4" rx="0.3" fill={filled >= 1 ? "#000" : "#d0d0d0"} />
    <rect x="4.4" y="7" width="2.2" height="7" rx="0.3" fill={filled >= 2 ? "#000" : "#d0d0d0"} />
    <rect x="8.8" y="4" width="2.2" height="10" rx="0.3" fill={filled >= 3 ? "#000" : "#d0d0d0"} />
    <rect x="13.2" y="0" width="2.2" height="14" rx="0.3" fill={filled >= 4 ? "#000" : "#d0d0d0"} />
  </svg>
);

// WiFi arcs: strength 0 = dot only, 1 = 1 arc, 2 = 2 arcs, 3 = 3 arcs (full)
const AndroidWifiIcon = ({ strength = 3 }: { strength?: number }) => (
  <svg width="13" height="10" viewBox="0 0 16 12" fill="none">
    <circle cx="8" cy="11" r="1.5" fill="#000" />
    {strength >= 1 && <path d="M5.5 8.8C6.3 7.9 7.1 7.5 8 7.5C8.9 7.5 9.7 7.9 10.5 8.8" stroke="#000" strokeWidth="1.3" strokeLinecap="round" fill="none" />}
    {strength >= 2 && <path d="M3.2 6.4C4.7 4.8 6.3 4 8 4C9.7 4 11.3 4.8 12.8 6.4" stroke="#000" strokeWidth="1.3" strokeLinecap="round" fill="none" />}
    {strength >= 3 && <path d="M1 4C3.1 1.6 5.4 0.5 8 0.5C10.6 0.5 12.9 1.6 15 4" stroke="#000" strokeWidth="1.3" strokeLinecap="round" fill="none" />}
    {strength < 1 && <path d="M5.5 8.8C6.3 7.9 7.1 7.5 8 7.5C8.9 7.5 9.7 7.9 10.5 8.8" stroke="#d0d0d0" strokeWidth="1.3" strokeLinecap="round" fill="none" />}
    {strength < 2 && <path d="M3.2 6.4C4.7 4.8 6.3 4 8 4C9.7 4 11.3 4.8 12.8 6.4" stroke="#d0d0d0" strokeWidth="1.3" strokeLinecap="round" fill="none" />}
    {strength < 3 && <path d="M1 4C3.1 1.6 5.4 0.5 8 0.5C10.6 0.5 12.9 1.6 15 4" stroke="#d0d0d0" strokeWidth="1.3" strokeLinecap="round" fill="none" />}
  </svg>
);

// Battery (Android status-bar portrait style) with optional charging bolt
const AndroidBattery = ({ percent, charging = false }: { percent: number; charging?: boolean }) => (
  <svg width="10" height="14" viewBox="0 0 10 14" fill="none" aria-label="Battery">
    <rect x="3.3" y="0.4" width="3.4" height="1.6" rx="0.8" fill="#000" />
    <rect x="1" y="1.8" width="8" height="11.6" rx="1.5" fill="#d1d1d1" />
    <rect
      x="2"
      y={2 + (1 - Math.min(100, Math.max(0, percent)) / 100) * 9.6}
      width="6"
      height={(Math.min(100, Math.max(0, percent)) / 100) * 9.6}
      rx="1"
      fill="#000"
    />
    {charging && (
      <path d="M5.8 4.2L4 7h1.5L4.2 10.2L6.7 7.2H5.2L5.8 4.2Z" fill="white" />
    )}
  </svg>
);

// Bluetooth icon (Android)
const AndroidBluetooth = () => (
  <svg width="10" height="10" viewBox="0 0 24 24" fill="#000" aria-label="Bluetooth">
    <path d="M17.71 7.71 12 2h-1v7.59L6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 11 14.41V22h1l5.71-5.71L13.41 12l4.3-4.29ZM13 6.83l1.88 1.88L13 10.59V6.83Zm1.88 8.46L13 17.17v-3.76l1.88 1.88Z" />
  </svg>
);

// Airplane mode icon (Android)
const AndroidAirplane = () => (
  <svg width="11" height="11" viewBox="0 0 24 24" fill="#000">
    <path d="M21 16v-2l-8-5V3.5c0-.83-.67-1.5-1.5-1.5S10 2.67 10 3.5V9l-8 5v2l8-2.5V19l-2 1.5V22l3.5-1 3.5 1v-1.5L13 19v-5.5l8 2.5z" />
  </svg>
);

// Alarm icon (Android)
const AndroidAlarm = () => (
  <svg width="11" height="11" viewBox="0 0 24 24" fill="#000">
    <path d="M22 5.72l-4.6-3.86-1.29 1.53 4.6 3.86L22 5.72zM7.88 3.39L6.6 1.86 2 5.71l1.29 1.53 4.59-3.85zM12.5 8H11v6l4.75 2.85.75-1.23-4-2.37V8zM12 4c-4.97 0-9 4.03-9 9s4.02 9 9 9c4.97 0 9-4.03 9-9s-4.03-9-9-9zm0 16c-3.87 0-7-3.13-7-7s3.13-7 7-7 7 3.13 7 7-3.13 7-7 7z" />
  </svg>
);

// NFC icon (Android)
const AndroidNfc = () => (
  <svg width="11" height="11" viewBox="0 0 24 24" fill="none" stroke="#000" strokeWidth="2" strokeLinecap="round">
    <path d="M20 7a9 9 0 0 1 0 10" />
    <path d="M4 7a9 9 0 0 0 0 10" />
    <path d="M17 9.5a5 5 0 0 1 0 5" />
    <path d="M7 9.5a5 5 0 0 0 0 5" />
    <circle cx="12" cy="12" r="1.5" fill="#000" stroke="none" />
  </svg>
);

// Silent / muted bell (Android) — bell silhouette with white diagonal slash cutting through it
const AndroidSilent = () => (
  <svg width="12" height="12" viewBox="0 0 24 24" fill="#000">
    <path d="M12 22c1.1 0 2-.9 2-2h-4c0 1.1.9 2 2 2zm6-6v-5c0-3.07-1.64-5.64-4.5-6.32V4c0-.83-.67-1.5-1.5-1.5s-1.5.67-1.5 1.5v.68C7.63 5.36 6 7.92 6 11v5l-2 2v1h16v-1l-2-2z" />
    <line x1="2" y1="2" x2="22" y2="22" stroke="white" strokeWidth="2.5" strokeLinecap="round" />
  </svg>
);

// Location pin (Android)
const AndroidLocation = () => (
  <svg width="10" height="10" viewBox="0 0 24 24" fill="#000">
    <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z" />
  </svg>
);

// VoLTE indicator (Android) — Samsung One UI style
const AndroidVolte = () => (
  <div style={{ fontSize: '9px', fontWeight: 700, color: '#000', letterSpacing: '-0.3px', lineHeight: 1, fontFamily: 'Roboto, sans-serif' }}>
    VoLTE
  </div>
);

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

/* ─── Carousel Dots (Ring style) ─── */
const CarouselDots = ({
  total = 5,
  active = 0,
}: {
  total?: number;
  active?: number;
}) => (
  <div className="flex justify-center items-center gap-[4.25px] w-[52px]">
    {Array.from({ length: total }).map((_, i) => {
      const isActive = i === active;
      return (
        <div key={i} className="flex items-center justify-center w-[7px] h-[7px]">
          {isActive ? (
            <svg width="7" height="7" viewBox="0 0 7 7">
              <circle cx="3.5" cy="3.5" r="3.1" stroke="#8dc73f" strokeWidth="0.8" fill="white" />
              <circle cx="3.5" cy="3.5" r="1.85" fill="#8dc73f" />
            </svg>
          ) : (
            <svg width="7" height="7" viewBox="0 0 7 7">
              <circle cx="3.5" cy="3.5" r="3.1" stroke="#8dc73f" strokeWidth="0.8" fill="none" />
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
}: {
  data: ReceiptData;
  isPreview?: boolean;
}) => {
  const config = devicePresets[data.preset] || devicePresets.test_accuracy;
  const os = config.os;
  const { width, height } = config;
  const canvasWidth = Number.parseInt(width, 10);
  const canvasHeight = Number.parseInt(height, 10);

  const notchType = data.cameraHoleOverride === "default"
    ? config.notch
    : (data.cameraHoleOverride === "left" ? "punch_left"
      : data.cameraHoleOverride === "center" ? "punch_center"
        : "none");

  const navType = data.navBarOverride === "default"
    ? config.nav
    : data.navBarOverride;

  const sectionLayout = applyTweaks(
    computeReceiptLayout({
      os,
      navType,
      canvasWidth,
      canvasHeight,
      tweaks: data.layoutTweaks,
    }),
    {
      os,
      navType,
      canvasWidth,
      canvasHeight,
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
      id="receipt-screen"
      className={cn(
        "bg-white w-full h-full relative flex flex-col select-none",
        config.font === "font-roboto" ? "font-['Roboto',sans-serif]" : "font-sans"
      )}
    >
      {/* Android Status Bar — Samsung One UI style, Roboto Medium 12sp */}
      {os === "android" && (
        <div className="h-[32px] w-full flex items-center justify-between px-[14px] pt-[16px] shrink-0 z-10 bg-white">
          <div
            className={cn(
              "leading-none shrink-0",
              notchType === "punch_left" ? "ml-[36.5px]" : "ml-[4px]"
            )}
            style={{
              fontFamily: '"Samsung One", Roboto, sans-serif',
              fontWeight: 500,
              fontSize: '12px',
              letterSpacing: '0px',
              color: '#000',
            }}
          >
            {data.time}
          </div>
          <div className="flex items-center gap-[4.5px] shrink-0">
            {data.airplaneMode && <AndroidAirplane />}
            {!data.airplaneMode && data.showBluetooth && <AndroidBluetooth />}
            {data.silentMode && <AndroidSilent />}
            {data.showLocation && <AndroidLocation />}
            {data.showNfc && <AndroidNfc />}
            {data.showAlarm && <AndroidAlarm />}
            {wifiStrength > 0 && <AndroidWifiIcon strength={wifiStrength} />}
            {data.showVolte && !data.airplaneMode && <AndroidVolte />}
            <AndroidSignalBars filled={signalFilled} />
            {data.simCount === 2 && (
              <AndroidSignalBars filled={Math.max(0, signalFilled - 1)} />
            )}
            <div className="flex items-center gap-[2.5px]">
              <div className="w-px h-[14px] bg-black/20 mr-px" />
              <span className="text-[11px] font-normal text-black tracking-[-0.4px]">{data.battery}%</span>
              <AndroidBattery percent={batteryNum} charging={data.batteryCharging} />
            </div>
          </div>
        </div>
      )}

      {/* iOS Status Bar — SF Pro Display Semibold, correct icon geometry */}
      {os === "ios" && (
        <div className={cn(
          "h-[48px] w-full flex items-center justify-between px-[20px] shrink-0 z-10 bg-white",
          notchType === "dynamic_island" ? "pt-[14px]" : "pt-[10px]"
        )}>
          <div
            style={{
              fontFamily: '-apple-system, "SF Pro Display", "Helvetica Neue", sans-serif',
              fontWeight: 600,
              fontSize: '15px',
              letterSpacing: '-0.3px',
              color: '#000',
            }}
          >
            {data.time}
          </div>
          <div className="flex items-center gap-[5px]">
            {data.showAlarm && <IosAlarm />}
            {data.showBluetooth && <IosBluetooth />}
            {data.airplaneMode
              ? <IosAirplane />
              : <IosSignalBars filled={signalFilled} />
            }
            {wifiStrength > 0 && !data.airplaneMode && <IosWifiIcon strength={wifiStrength} />}
            <IosBattery percent={batteryNum} charging={data.batteryCharging} />
          </div>
        </div>
      )}

      <div className="flex-1 w-full h-full flex flex-col relative overflow-hidden pointer-events-none">

        {/* Top Header Actions */}
        <div style={sectionStyle(sectionLayout.topActions)} className="flex justify-between items-center px-[9px]">
          <div className="flex items-center gap-1.5 text-[#8dc73f]">
            <Download size={16} strokeWidth={1.6} />
            <span className="text-[13.5px] font-normal tracking-tight leading-none mt-0.5">Download</span>
          </div>
          <div className="flex items-center gap-1.5 text-[#8dc73f]">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.6" strokeLinecap="round" strokeLinejoin="round">
              <circle cx="18" cy="5" r="3" />
              <circle cx="6" cy="12" r="3" />
              <circle cx="18" cy="19" r="3" />
              <line x1="8.59" y1="13.51" x2="15.42" y2="17.49" />
              <line x1="15.41" y1="6.51" x2="8.59" y2="10.49" />
            </svg>
            <span className="text-[13.5px] font-normal tracking-tight leading-none mt-0.5">Share</span>
          </div>
        </div>

        {/* Success Circle */}
        <div style={sectionStyle(sectionLayout.successBadge)} className="flex items-center justify-center">
          <div className="w-[44px] h-[44px] aspect-square flex-none bg-[#8dc73f] rounded-full flex items-center justify-center">
            <svg width="35" height="26" viewBox="0 0 24 24" fill="none" stroke="white" strokeWidth="2.5" strokeLinecap="round" strokeLinejoin="round">
              <polyline points="20 6 9 17 4 12" />
            </svg>
          </div>
        </div>

        {/* Success Text */}
        <div style={sectionStyle(sectionLayout.successText)} className="flex items-center justify-center">
          <span className="text-[#8dc73f] text-[13.5px] font-[410] tracking-[-0.21px] leading-none">Successful</span>
        </div>

        {/* Amount */}
        <div style={sectionStyle(sectionLayout.amountBlock)} className="flex items-baseline justify-center gap-1">
          <div
            className="flex items-baseline"
            style={{ transform: "translateY(-0.5px) translateX(-1.5px) scaleX(0.96) scaleY(0.94)", transformOrigin: "bottom right" }}
          >
            <span
              className="text-[31.5px] font-normal text-[#111] tracking-normal leading-none"
              style={{ WebkitTextStroke: "1.1px currentColor", transform: "translateX(2.0px) translateY(-0.3px)", display: "inline-block" }}
            >
              {displayAmount}
            </span>
            <span
              className="text-[31.5px] font-normal text-[#111] tracking-normal leading-none"
              style={{ WebkitTextStroke: "1.1px currentColor", transform: "translateX(0.8px) translateY(-0.2px)", display: "inline-block" }}
            >
              {decPart}
            </span>
          </div>
          <span
            className="text-[11px] font-normal text-[#111] leading-none"
            style={{ WebkitTextStroke: "0.55px currentColor", transform: "translateX(-0.7px) translateY(-0.5px)", display: "inline-block" }}
          >
            (ETB)
          </span>
        </div>

        {/* Divider */}
        <div style={sectionStyle(sectionLayout.divider)} className="bg-[#e6e6e6] opacity-60" />

        {/* Transaction Table Rows */}
        <div style={sectionStyle(sectionLayout.tableBlock)} className="flex flex-col gap-[12px]" >
          <div className="w-full flex justify-between items-center">
            <span className="text-[#808080] text-[11px] font-semibold tracking-[-0.2px] whitespace-nowrap" style={{ WebkitTextStroke: "0.1px currentColor" }}>Transaction Time:</span>
            <span className="text-[#111] text-[11.2px] font-normal tracking-[-0.12px] whitespace-nowrap text-right w-[132px] translate-y-[0.8px]">{data.transactionTime}</span>
          </div>

          <div className="w-full flex justify-between items-center">
            <span className="text-[#808080] text-[11px] font-semibold tracking-[-0.2px] whitespace-nowrap" style={{ WebkitTextStroke: "0.1px currentColor" }}>Transaction Type:</span>
            <span className="text-[#111] text-[11.2px] font-normal tracking-[-0.12px] whitespace-nowrap text-right w-[132px] translate-y-[0.8px]">{data.transactionType}</span>
          </div>

          <div className="w-full flex justify-between items-center">
            <span className="text-[#808080] text-[11px] font-semibold tracking-[-0.2px] whitespace-nowrap" style={{ WebkitTextStroke: "0.1px currentColor" }}>Transaction To:</span>
            <span className="text-[#111] text-[11.2px] font-normal tracking-[-0.12px] whitespace-nowrap text-right w-[132px] translate-y-[0.8px]">{data.transactionTo}</span>
          </div>

          <div className="w-full flex justify-between items-center">
            <span className="text-[#808080] text-[11px] font-semibold tracking-[-0.2px] whitespace-nowrap" style={{ WebkitTextStroke: "0.1px currentColor" }}>Transaction Number:</span>
            <span className="text-[#111] text-[11.2px] font-normal tracking-[-0.12px] whitespace-nowrap text-right w-[132px] translate-y-[0.8px]">{data.transactionNumber}</span>
          </div>
        </div>

        {/* QR Row */}
        <div style={sectionStyle(sectionLayout.qrRow)} className="flex justify-end items-center text-[#8dc73f]">
          <div className="flex items-center whitespace-nowrap gap-[2px]">
            <img src="/Asset/qr code icon.svg" alt="QR Code Icon" className="w-[24px] h-[28px] shrink-0" />
            <span className="text-[14.2px] font-semibold tracking-[-0.3px] leading-none shrink-0" style={{ marginRight: "5px" }}>QR Code</span>
            <div className="flex items-center justify-center shrink-0 w-[14px]">
              <svg width="14" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.4" strokeLinecap="round" strokeLinejoin="round">
                <polyline points="9 20 15 12 9 4" />
              </svg>
            </div>
          </div>
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
          <CarouselDots active={Math.max(0, data.bannerIndex - 1)} total={5} />
        </div>

        {/* Finished Button */}
        <div style={sectionStyle(sectionLayout.finishedButton)} className="flex justify-center">
          <div className="w-full h-full bg-[#8dc73f] text-white rounded-[8px] text-[13px] font-semibold tracking-wide flex items-center justify-center">
            Finished
          </div>
        </div>
      </div>

      {/* FIXED FOOTER */}
      {navType !== "hidden" && (
        <div className="shrink-0 bg-white">
          {navType === "buttons" && (
            <div className="h-[48px] w-full bg-black flex items-center justify-around px-8 border-t border-white/5">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="white" strokeWidth="1.2" strokeLinecap="round" opacity="0.8">
                <path d="M7 6v12M12 6v12M17 6v12" />
              </svg>
              <div className="w-[18px] h-[18px] border-[1.2px] border-white/80 rounded-[4px] opacity-80" />
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="white" strokeWidth="1.2" strokeLinecap="round" opacity="0.8">
                <path d="M15 18l-6-6 6-6" />
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
  const frameScale = isIos ? 0.75 : 0.8;

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
