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
  airplaneMode: boolean;
  showAlarm: boolean;
  showNfc: boolean;
  showHotspot: boolean;
  use12HourFormat: boolean;
  layoutTweaks?: ReceiptLayoutTweaks;
}

// Samsung One UI status bar icon color — matches the dark gray in the real screenshot
const SB = '#636363';

// ─── Samsung One UI Status Bar Icons ───
// Every path below is extracted from github.com/OneUIProject/oneui-icons

// Signal bars (ic_oui_mobile_data.xml paths — 4 rounded vertical bars)
const SBSignal = ({ filled = 4 }: { filled?: number }) => (
  <svg width="12" height="12" viewBox="0 0 24 24" fill="none">
    <path fill={SB} fillOpacity={filled >= 1 ? 1 : 0.3} fillRule="evenodd" d="M5.613 16.097c.553 0 1 .455 1 1.017v2.244c0 .562-.447 1.017-1 1.017s-1-.455-1-1.017v-2.244c0-.562.448-1.017 1-1.017Z" />
    <path fill={SB} fillOpacity={filled >= 2 ? 1 : 0.3} fillRule="evenodd" d="M9.871 12.27c.552 0 1 .456 1 1.016v6.072c0 .561-.448 1.017-1 1.017-.553 0-1-.456-1-1.017v-6.072c0-.56.447-1.016 1-1.016Z" />
    <path fill={SB} fillOpacity={filled >= 3 ? 1 : 0.3} fillRule="evenodd" d="M14.129 7.693c.552 0 1 .455 1 1.016v10.649c0 .561-.448 1.017-1 1.017-.553 0-1-.456-1-1.017V8.709c0-.56.447-1.016 1-1.016Z" />
    <path fill={SB} fillOpacity={filled >= 4 ? 1 : 0.3} fillRule="evenodd" d="M18.387 3.625c.551 0 1 .455 1 1.017v14.716c0 .561-.449 1.017-1 1.017-.554 0-1-.456-1-1.017V4.642c0-.562.446-1.017 1-1.017Z" />
  </svg>
);

// WiFi icon (ic_oui_wifi.xml) — 4 arcs + dot, with data activity arrows beside it
const SBWifi = ({ strength = 3 }: { strength?: number }) => (
  <div className="flex items-center" style={{ gap: '0px' }}>
    <svg width="13" height="13" viewBox="0 0 24 24" fill="none">
      {/* Outermost arc */}
      <path fill={SB} fillOpacity={strength >= 4 ? 1 : 0.3} fillRule="evenodd" d="M2.137 8.582c5.438-5.438 14.289-5.438 19.727 0a.75.75 0 0 1-1.061 1.06c-4.854-4.853-12.752-4.853-17.605 0a.75.75 0 1 1-1.06-1.06Z" />
      {/* 2nd arc */}
      <path fill={SB} fillOpacity={strength >= 3 ? 1 : 0.3} fillRule="evenodd" d="M12 8.605a9.42 9.42 0 0 1 6.957 2.882.75.75 0 1 1-1.06 1.06 7.926 7.926 0 0 0-11.794 0 .75.75 0 0 1-1.06-1.06A9.42 9.42 0 0 1 12 8.605Z" />
      {/* 3rd arc */}
      <path fill={SB} fillOpacity={strength >= 2 ? 1 : 0.3} fillRule="evenodd" d="M8.124 14.569a5.479 5.479 0 0 1 7.752 0 .75.75 0 0 1-1.061 1.061 3.979 3.979 0 0 0-5.63 0 .75.75 0 0 1-1.06-1.061Z" />
      {/* Center dot */}
      <path fill={SB} fillOpacity={strength >= 1 ? 1 : 0.3} fillRule="evenodd" d="M12 17.163a1.167 1.167 0 1 1 0 2.334 1.167 1.167 0 0 1 0-2.334Z" />
    </svg>
    {/* Data activity arrows ▲▼ — Samsung shows these next to WiFi */}
    <svg width="5" height="11" viewBox="0 0 5 11" fill="none" style={{ marginLeft: '-1px' }}>
      <polygon points="0.8,4.5 2.5,1 4.2,4.5" fill={SB} />
      <polygon points="0.8,6.5 2.5,10 4.2,6.5" fill={SB} />
    </svg>
  </div>
);

// Battery — Samsung horizontal style (body left-to-right, nub on right)
const SBBattery = ({ percent, charging = false }: { percent: number; charging?: boolean }) => {
  const isLow = percent <= 15;
  const c = isLow ? '#e53935' : SB;
  // body: 16 wide × 9 tall, nub 2 wide on the right
  const bodyW = 16, bodyH = 9, nubW = 2, nubH = 4;
  const fillW = (bodyW - 2.4) * (percent / 100); // inner fill
  return (
    <div className="relative flex items-center">
      <svg width="13" height="10" viewBox={`0 0 ${bodyW + nubW + 1} ${bodyH + 2}`} fill="none">
        {/* Battery body outline */}
        <rect x="0.8" y="1" width={bodyW} height={bodyH} rx="1.8" ry="1.8"
          stroke={c} strokeWidth="1.4" fill="none" />
        {/* Nub / cap on right */}
        <rect x={bodyW + 0.8} y={(bodyH + 2 - nubH) / 2} width={nubW} height={nubH} rx="0.6" ry="0.6"
          fill={c} />
        {/* Fill level */}
        <rect x="2" y="2.2" width={fillW} height={bodyH - 2.4} rx="0.8" ry="0.8" fill={c} />
      </svg>
      {charging && (
        <svg width="6" height="8" viewBox="0 0 12 16" fill="none"
          className="absolute top-1/2 left-[42%] -translate-x-1/2 -translate-y-1/2 z-10">
          <path d="M7 0L1 9h4.5L4.5 16 11 7H6.5L7 0z" fill="white" />
          <path d="M7 0L1 9h4.5L4.5 16 11 7H6.5L7 0z" fill={c} opacity="0.9" />
        </svg>
      )}
    </div>
  );
};

// Bluetooth (ic_oui_bluetooth.xml — authentic OneUI filled path)
const SBBluetooth = () => (
  <svg width="10" height="11" viewBox="0 0 24 24" fill={SB} fillRule="evenodd">
    <path d="M12.614 19.224c-.016.01-.063.047-.135.01-.07-.035-.07-.095-.07-.114V13.437l3.931 2.97c.012.01.026.02.041.03.005.003.011.007.016.01l-3.783 2.777Zm-.205-14.343c0-.02 0-.08.07-.115a.118.118 0 0 1 .061-.016c.038 0 .063.019.074.027l3.744 2.747a.08.08 0 0 1 .034.029l-3.983 3.01V4.881Zm5.566 11.461c-.024-.31-.174-.76-.75-1.145l-4.23-3.197 4.351-3.288a.754.754 0 0 0 .05-.041c.331-.298.513-.75.485-1.205-.029-.469-.269-.894-.648-1.161l-3.731-2.737a1.204 1.204 0 0 0-1.7.263 1.207 1.207 0 0 0-.497-.597 1.202 1.202 0 0 0-.893 1.453v5.543L6.323 6.958a.75.75 0 0 0-1.05.147.751.751 0 0 0 .146 1.05l5.088 3.844-5.088 3.845a.751.751 0 0 0 .452 1.352.746.746 0 0 0 .452-.153l4.586-3.464v5.543c0 .617.342 1.173.893 1.453.234.119.486.177.737.177.34 0 .677-.107.963-.317l3.881-2.847c.02-.015.041-.032.059-.049.484-.439.557-.892.533-1.195Z" />
  </svg>
);

// Airplane mode (ic_oui_airplane_mode.xml)
const SBAirplane = () => (
  <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke={SB} strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round">
    <path d="M10.661 17.014l-.267-3.439-5.958 2.535a.249.249 0 0 1-.321-.346v-1.248c0-.243.117-.471.315-.611l5.919-4.211-.222-2.567-.02-.284v-.52C10.107 5.169 11.162 3.75 12.2 3.75c1.037 0 2.092 1.419 2.092 2.573v.513l-.003.056-.012.198-.226 2.604 5.917 4.214c.199.14.316.368.316.61v1.248a.249.249 0 0 1-.522.105l-5.955-2.537-.266 3.441a.738.738 0 0 0 .151.513l1.604 2.104a.288.288 0 0 1-.458.568l-2.319-1.093a.497.497 0 0 0-.639 0l-2.319 1.093a.288.288 0 0 1-.458-.568l1.607-2.105a.738.738 0 0 0 .151-.514Z" />
  </svg>
);

// Alarm (ic_oui_alarm.xml)
const SBAlarm = () => (
  <svg width="12" height="12" viewBox="0 0 24 24" fill={SB} fillRule="evenodd">
    <path d="M12 4.538c4.232 0 7.675 3.444 7.675 7.676 0 2.298-1.017 4.362-2.622 5.77l1.158 1.398a.75.75 0 1 1-1.156.757l-1.224-1.48A7.63 7.63 0 0 1 12 19.889a7.63 7.63 0 0 1-3.832-1.03l-1.224 1.48a.75.75 0 1 1-1.155-.758l1.157-1.397c-1.605-1.408-2.622-3.472-2.622-5.77C4.324 7.982 7.768 4.538 12 4.538Zm-.278 2.761a.75.75 0 0 0-.75.75v3.437c0 .666.542 1.208 1.208 1.208h2.573a.75.75 0 0 0 0-1.5h-2.281V8.049a.75.75 0 0 0-.75-.75ZM5.588 3.609a.75.75 0 0 1 1.06 0 .75.75 0 0 1 0 1.061l-2.77 2.77a.75.75 0 0 1-1.062-1.06l2.772-2.771Zm11.764 0a.75.75 0 0 1 1.061 0l2.77 2.771a.75.75 0 1 1-1.06 1.06l-2.771-2.77a.75.75 0 0 1 0-1.06Z" />
  </svg>
);

// NFC (generic — not in OneUI icons repo, using standard NFC icon)
const SBNfc = () => (
  <svg width="10" height="10" viewBox="0 0 24 24" fill="none" stroke={SB} strokeWidth="2.2" strokeLinecap="round">
    <path d="M20 7a9 9 0 0 1 0 10" /><path d="M4 7a9 9 0 0 0 0 10" />
    <path d="M17 9.5a5 5 0 0 1 0 5" /><path d="M7 9.5a5 5 0 0 0 0 5" />
    <circle cx="12" cy="12" r="1.5" fill={SB} stroke="none" />
  </svg>
);

// Silent / Mute (ic_oui_sound_mute.xml)
const SBSilent = () => (
  <svg width="12" height="12" viewBox="0 0 24 24" fill={SB}>
    <path d="M5.6442,5.0994C5.8682,4.8754 6.1982,4.8234 6.4722,4.9414C6.4972,4.9774 6.5242,5.0134 6.5562,5.0444L6.5562,5.0444L19.3392,17.8284C19.4402,18.0954 19.3842,18.4084 19.1702,18.6234C19.0232,18.7704 18.8312,18.8434 18.6392,18.8434C18.4472,18.8434 18.2552,18.7704 18.1092,18.6234L18.1092,18.6234L15.7042,16.2184L15.7042,18.8144C15.7042,19.7454 15.1382,19.9974 14.4452,19.3754L14.4452,19.3754L9.3142,14.7474C9.2662,14.7514 9.2192,14.7554 9.1712,14.7554L9.1712,14.7554L6.3622,14.7554C5.4002,14.7554 4.6122,13.9684 4.6122,13.0054L4.6122,13.0054L4.6122,10.7394C4.6122,9.7764 5.4002,8.9894 6.3622,8.9894L6.3622,8.9894L8.4742,8.9894L5.6442,6.1594C5.3512,5.8664 5.3512,5.3914 5.6442,5.0994ZM14.4459,4.6243C15.1379,4.0023 15.7039,4.2553 15.7039,5.1853L15.7039,5.1853L15.7039,12.0713L10.8579,7.2263Z" />
  </svg>
);

// Hotspot (ic_oui_mobile_hotspot.xml — authentic path)
const SBHotspot = () => (
  <svg width="12" height="12" viewBox="0 0 24 24" fill="none">
    <path fill={SB} d="M9.222 15.828a.875.875 0 1 0-1.237-1.237.875.875 0 0 0 1.237 1.237Z" />
    <path stroke={SB} strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" d="M16.5 20.25H7.5C6.12 20.25 5 19.131 5 17.75V6.25C5 4.869 6.12 3.75 7.5 3.75h9c1.381 0 2.5 1.119 2.5 2.5v11.5c0 1.381-1.119 2.5-2.5 2.5ZM12.169 15.272c0-2.004-1.625-3.628-3.628-3.628M15.51 15.272c0-3.849-3.12-6.969-6.969-6.969" />
  </svg>
);

// Location (ic_oui_location.xml)
const SBLocation = () => (
  <svg width="11" height="11" viewBox="0 0 24 24" fill={SB} fillRule="evenodd">
    <path d="M12,13.169C10.343,13.169 9,11.826 9,10.167C9,8.512 10.343,7.169 12,7.169C13.656,7.169 15,8.512 15,10.167C15,11.826 13.656,13.169 12,13.169M12,3.027C8.02,3.027 4.784,6.263 4.784,10.24C4.784,12.995 6.88,15.315 6.962,15.403L10.86,20.45C11.46,21.148 12.54,21.148 13.138,20.449L17.028,15.412C17.118,15.315 19.216,12.995 19.216,10.24C19.216,6.263 15.978,3.027 12,3.027" />
  </svg>
);

// LTE / 4G (Samsung style — text in a tiny box)
const SBLte = () => (
  <div style={{
    border: `1px solid ${SB}`,
    borderRadius: '1.2px',
    padding: '0 1.2px',
    fontSize: '6.5px',
    fontWeight: 900,
    color: SB,
    lineHeight: 1,
    height: '9px',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    transform: 'translateY(-0.5px)',
    fontFamily: 'system-ui, sans-serif',
    letterSpacing: '-0.1px'
  }}>
    LTE
  </div>
);

// VoLTE (Samsung renders this as bold small text)
const SBVolte = () => (
  <div style={{ fontSize: '9px', fontWeight: 900, color: SB, letterSpacing: '-0.3px', lineHeight: 1, fontFamily: '"SamsungOne", Roboto, sans-serif', transform: 'translateY(-0.2px)' }}>
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

  const notchType = data.cameraHoleOverride === "default"
    ? config.notch
    : (data.cameraHoleOverride === "left" ? "punch_left"
      : data.cameraHoleOverride === "center" ? "punch_center"
        : "none");
  const navType = data.navBarOverride === "default"
    ? config.nav
    : data.navBarOverride;
  // Keep receipt content anchored even when visual bottom-nav height is adjusted via slider.
  const layoutNavButtonsHeight = 42.5;

  const { sections: sectionLayout, subElements } = applyTweaks(
    computeReceiptLayout({
      os,
      navType,
      canvasWidth,
      canvasHeight,
      navButtonsHeight: layoutNavButtonsHeight,
      tweaks: data.layoutTweaks,
    }),
    {
      os,
      navType,
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
      {/* Android Status Bar — Samsung One UI style */}
      {os === "android" && (
        <div className="h-[32px] w-full flex items-center justify-between px-[14px] pt-[16px] shrink-0 z-10 bg-white">
          <div
            className={cn(
              "leading-none shrink-0",
              notchType === "punch_left" ? "ml-[36.5px]" : "ml-[4px]"
            )}
            style={{
              fontFamily: '"SamsungOne", Roboto, sans-serif',
              fontWeight: 600,
              fontSize: '13.5px',
              letterSpacing: '0.1px',
              color: SB,
            }}
          >
            {data.time}
          </div>
          <div className="flex items-center gap-[4.5px] shrink-0">
            {data.showNfc && <SBNfc />}
            {data.showAlarm && <SBAlarm />}
            {data.silentMode && <SBSilent />}
            {data.showLocation && <SBLocation />}
            {!data.airplaneMode && data.showBluetooth && <SBBluetooth />}
            {data.airplaneMode && <SBAirplane />}
            {wifiStrength > 0 && <SBWifi strength={wifiStrength} />}
            {data.showHotspot && <SBHotspot />}
            {data.showMobileData && !data.airplaneMode && <SBLte />}
            {data.showVolte && !data.airplaneMode && <SBVolte />}
            {data.simCount === 2 && (
              <SBSignal filled={Math.max(0, signalFilled - 1)} />
            )}
            <SBSignal filled={signalFilled} />
            <div className="flex items-center" style={{ gap: '2.5px', marginLeft: '1px' }}>
              <span
                style={{
                  fontFamily: '"SamsungOne", Roboto, sans-serif',
                  fontWeight: 600,
                  fontSize: '13.5px',
                  letterSpacing: '-0.2px',
                  lineHeight: '1',
                  color: SB,
                }}
              >
                {data.battery}%
              </span>
              <SBBattery percent={batteryNum} charging={data.batteryCharging} />
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
            <Download
              size={data.downloadIconSize ?? 16}
              strokeWidth={1.6}
              style={{ transform: `translate(${data.downloadIconX ?? 0}px, ${data.downloadIconY ?? 0}px)` }}
            />
            <span className="text-[13.5px] font-normal tracking-tight leading-none mt-0.5">Download</span>
          </div>
          <div className="flex items-center gap-1.5 text-[#8dc73f]">
            <svg
              width={data.shareIconSize ?? 16}
              height={data.shareIconSize ?? 16}
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              strokeWidth="1.6"
              strokeLinecap="round"
              strokeLinejoin="round"
              style={{ transform: `translate(${data.shareIconX ?? 0}px, ${data.shareIconY ?? 0}px)` }}
            >
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
            <svg width={data.checkmarkSize ?? 22} height={Math.round((data.checkmarkSize ?? 22) * 0.743)} viewBox="0 0 24 24" fill="none" stroke="white" strokeWidth={data.checkmarkStroke ?? 2.5} strokeLinecap="round" strokeLinejoin="round" style={{ transform: `translate(${data.checkmarkIconX ?? 0}px, ${data.checkmarkIconY ?? 0}px)` }}>
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
              className="font-normal text-[#111] tracking-normal leading-none"
              style={{ fontSize: `${data.amountFontSize ?? 31.5}px`, WebkitTextStroke: `${data.amountStroke ?? 1.1}px currentColor`, transform: "translateX(2.0px) translateY(-0.3px)", display: "inline-block" }}
            >
              {displayAmount}
            </span>
            <span
              className="font-normal text-[#111] tracking-normal leading-none"
              style={{ fontSize: `${data.amountFontSize ?? 31.5}px`, WebkitTextStroke: `${data.amountStroke ?? 1.1}px currentColor`, transform: "translateX(0.8px) translateY(-0.2px)", display: "inline-block" }}
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
            <span className="text-[#8f8f8f] tracking-[-0.2px] whitespace-nowrap" style={{ fontSize: `${data.tableKeySize ?? 11}px`, fontWeight: data.tableKeyWeight ?? 600, WebkitTextStroke: `${data.tableKeyStroke ?? 0.1}px currentColor`, transform: `translate(${data.tableKeyColumnX ?? 0}px, ${data.tableKeyColumnY ?? 0}px)`, display: "inline-block" }}>Transaction Time:</span>
            <span className="text-[#111] tracking-[-0.12px] whitespace-nowrap text-right w-[132px]" style={{ fontSize: `${data.tableValSize ?? 11.2}px`, fontWeight: data.tableValWeight ?? 400, WebkitTextStroke: `${data.tableValStroke ?? 0}px currentColor`, transform: `translate(${data.tableValColumnX ?? 0}px, ${0.8 + (data.tableValColumnY ?? 0)}px)`, display: "inline-block" }}>{data.transactionTime}</span>
          </div>

          <div className="w-full flex justify-between items-center">
            <span className="text-[#8f8f8f] tracking-[-0.2px] whitespace-nowrap" style={{ fontSize: `${data.tableKeySize ?? 11}px`, fontWeight: data.tableKeyWeight ?? 600, WebkitTextStroke: `${data.tableKeyStroke ?? 0.1}px currentColor`, transform: `translate(${data.tableKeyColumnX ?? 0}px, ${data.tableKeyColumnY ?? 0}px)`, display: "inline-block" }}>Transaction Type:</span>
            <span className="text-[#111] tracking-[-0.12px] whitespace-nowrap text-right w-[132px]" style={{ fontSize: `${data.tableValSize ?? 11.2}px`, fontWeight: data.tableValWeight ?? 400, WebkitTextStroke: `${data.tableValStroke ?? 0}px currentColor`, transform: `translate(${data.tableValColumnX ?? 0}px, ${0.8 + (data.tableValColumnY ?? 0)}px)`, display: "inline-block" }}>{data.transactionType}</span>
          </div>

          <div className="w-full flex justify-between items-center">
            <span className="text-[#8f8f8f] tracking-[-0.2px] whitespace-nowrap" style={{ fontSize: `${data.tableKeySize ?? 11}px`, fontWeight: data.tableKeyWeight ?? 600, WebkitTextStroke: `${data.tableKeyStroke ?? 0.1}px currentColor`, transform: `translate(${data.tableKeyColumnX ?? 0}px, ${data.tableKeyColumnY ?? 0}px)`, display: "inline-block" }}>Transaction To:</span>
            <span className="text-[#111] tracking-[-0.12px] whitespace-nowrap text-right w-[132px]" style={{ fontSize: `${data.tableValSize ?? 11.2}px`, fontWeight: data.tableValWeight ?? 400, WebkitTextStroke: `${data.tableValStroke ?? 0}px currentColor`, transform: `translate(${data.tableValColumnX ?? 0}px, ${0.8 + (data.tableValColumnY ?? 0)}px)`, display: "inline-block" }}>{data.transactionTo}</span>
          </div>

          <div className="w-full flex justify-between items-center">
            <span className="text-[#8f8f8f] tracking-[-0.2px] whitespace-nowrap" style={{ fontSize: `${data.tableKeySize ?? 11}px`, fontWeight: data.tableKeyWeight ?? 600, WebkitTextStroke: `${data.tableKeyStroke ?? 0.1}px currentColor`, transform: `translate(${data.tableKeyColumnX ?? 0}px, ${data.tableKeyColumnY ?? 0}px)`, display: "inline-block" }}>Transaction Number:</span>
            <span className="text-[#111] tracking-[-0.12px] whitespace-nowrap text-right w-[132px]" style={{ fontSize: `${data.tableValSize ?? 11.2}px`, fontWeight: data.tableValWeight ?? 400, WebkitTextStroke: `${data.tableValStroke ?? 0}px currentColor`, transform: `translate(${data.tableValColumnX ?? 0}px, ${0.8 + (data.tableValColumnY ?? 0)}px)`, display: "inline-block" }}>{data.transactionNumber}</span>
          </div>
        </div>

        <div style={sectionStyle(sectionLayout.qrRow)} className="text-[#8dc73f] relative overflow-visible">
          {/* Arrow */}
          <div
            style={{
              width: `${data.qrArrowWidth ?? 14.5}px`,
              height: `${data.qrArrowHeight ?? 19}px`,
              position: "absolute",
              right: "0px",
              top: "50%",
              transform: `translateY(-50%) translate(${subElements.qrArrow.x}px, ${subElements.qrArrow.y}px)`,
            }}
          >
            <svg width="100%" height="100%" viewBox="0 0 100 100" fill="none" stroke="currentColor" strokeWidth={data.qrArrowStroke ?? 2.4} strokeLinecap="square" strokeLinejoin="miter" preserveAspectRatio="none" style={{ overflow: "visible" }}>
              <polyline points="0 0 100 50 0 100" vectorEffect="non-scaling-stroke" />
            </svg>
          </div>
          {/* Text */}
          <span
            className="tracking-[-0.3px] leading-none whitespace-nowrap"
            style={{
              fontSize: `${data.qrFontSize ?? 14.2}px`,
              fontWeight: data.qrTextWeight ?? 600,
              WebkitTextStroke: `${data.qrTextStroke ?? 0}px currentColor`,
              position: "absolute",
              right: "24px",
              top: "50%",
              transform: `translateY(-50%) translate(${subElements.qrText.x}px, ${subElements.qrText.y}px)`,
            }}
          >QR Code</span>
          {/* Icon */}
          <img
            src="/Asset/qr code icon.svg"
            alt="QR Code Icon"
            style={{
              width: `${data.qrIconWidth ?? 24}px`,
              height: `${data.qrIconHeight ?? 28}px`,
              position: "absolute",
              right: "88px",
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
          <CarouselDots active={Math.max(0, data.bannerIndex - 1)} total={5} />
        </div>

        {/* Finished Button */}
        <div style={sectionStyle(sectionLayout.finishedButton)} className="flex justify-center">
          <div className="w-[160px] h-[35px] bg-[#8dc73f] text-white rounded-[8px] font-semibold tracking-wide flex items-center justify-center">
            <span style={{ fontSize: `${data.finishedTextSize ?? 13}px`, lineHeight: 1, display: "inline-block" }}>Finished</span>
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
