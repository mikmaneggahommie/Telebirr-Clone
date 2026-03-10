import { useState } from "react";
import { toPng } from "html-to-image";
import { Download, RefreshCcw, Clock, ChevronDown, Check } from "lucide-react";
import { TelebirrReceipt, ReceiptData, devicePresets, PresetKey, getBannerSrc, BANNER_SLOTS } from "./components/TelebirrReceipt";
import { ReceiptLayoutTweaks } from "./components/layout/receiptLayout";
import {
  SAMSUNG_ALL_STATUS_ICONS,
  SAMSUNG_BATTERY_ICON_FILES,
  SAMSUNG_NETWORK_TYPE_ICON_FILES,
  SAMSUNG_SIGNAL_ICON_FILES,
  SAMSUNG_STATUS_ICON_LABELS,
  SAMSUNG_SYSTEM_TOGGLE_ICON_FILES,
  SAMSUNG_WIFI_ICON_FILES,
  SamsungBatteryIconFile,
  SamsungNetworkTypeIconFile,
  SamsungSignalIconFile,
  SamsungStatusIconFile,
  SamsungSystemToggleIconFile,
  SamsungWifiIconFile,
} from "./components/status/SamsungStatusIcons";

const PRESET_OPTIONS: { value: PresetKey; label: string }[] = [
  { value: "iphone_modern", label: "iPhone" },
  { value: "samsung", label: "Samsung" },
  { value: "test_accuracy", label: "Test Accuracy Mode (720×1560)" },
];

const EXPORT_SCREEN_ID = "receipt-export-screen";

const createSamsungIconEnabledState = (): Record<SamsungStatusIconFile, boolean> =>
  SAMSUNG_ALL_STATUS_ICONS.reduce((acc, file) => {
    acc[file] = false;
    return acc;
  }, {} as Record<SamsungStatusIconFile, boolean>);

const nextFrame = () =>
  new Promise<void>((resolve) => {
    requestAnimationFrame(() => resolve());
  });

const waitForCaptureReady = async (node: HTMLElement) => {
  try {
    await document.fonts.ready;
  } catch {
    // Ignore font readiness errors and continue.
  }

  const images = Array.from(node.querySelectorAll("img"));
  await Promise.all(
    images.map(async (img) => {
      if (!img.complete) {
        await new Promise<void>((resolve) => {
          const done = () => resolve();
          img.addEventListener("load", done, { once: true });
          img.addEventListener("error", done, { once: true });
        });
      }
      if (img.decode) {
        try {
          await img.decode();
        } catch {
          // Ignore decode errors and continue.
        }
      }
    }),
  );

  // Flush any pending layout/paint from async font/image updates.
  await nextFrame();
  await nextFrame();
};

const PremiumToggle = ({ enabled, onClick, label }: { enabled: boolean; onClick: () => void; label: string }) => (
  <div className="flex flex-col items-center gap-1.5 flex-1">
    <span className="text-[10px] font-bold text-gray-400 uppercase tracking-wider leading-tight text-center">{label}</span>
    <button
      type="button"
      onClick={onClick}
      className={`relative w-[42px] h-[22px] rounded-full transition-all duration-300 ${enabled ? 'bg-[#8dc73f]' : 'bg-gray-200'}`}
    >
      <span className={`absolute top-[2px] left-[2px] w-[18px] h-[18px] bg-white rounded-full transition-transform duration-300 transform ${enabled ? 'translate-x-[20px]' : 'translate-x-0'}`} />
    </button>
  </div>
);

const StepSlider = ({
  label, value, min, max, onChange, format, disabled,
}: {
  label: string; value: number; min: number; max: number;
  onChange: (v: number) => void; format?: (v: number) => string; disabled?: boolean;
}) => {
  const progress = ((value - min) / Math.max(1, max - min)) * 100;

  return (
    <div>
      <div className="flex justify-between items-center mb-1.5">
        <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">{label}</label>
        <span className="text-[10px] font-black text-[#8dc73f] bg-[#f3f7f4] px-2 py-0.5 rounded-md">{format ? format(value) : value}</span>
      </div>
      <div className="tele-slider">
        <div className="tele-slider__track" />
        <div
          className="tele-slider__fill"
          style={{ width: `${progress}%` }}
        />
        <input
          type="range" min={min} max={max} value={value}
          disabled={disabled}
          onChange={(e) => onChange(parseInt(e.target.value))}
          className="tele-slider__input"
        />
      </div>
    </div>
  );
};

const XYTweakSlider = ({
  label,
  value,
  onChange,
  onReset,
}: {
  label: string;
  value: { x: number; y: number };
  onChange: (v: { x: number; y: number }) => void;
  onReset: () => void;
}) => (
  <div className="space-y-2">
    <div className="flex items-center justify-between px-1">
      <span className="text-[10px] font-black text-[#444b43] uppercase tracking-wider">{label}</span>
      <div className="flex items-center gap-2">
        <span className="text-[9px] font-bold text-[#8c948a]">x: {value.x} · y: {value.y}</span>
        <button onClick={onReset} title="Reset to zero" className="text-[9px] font-black text-[#8c948a] hover:text-[#8dc73f] bg-[#f3f7f4] hover:bg-[#ebf2ee] px-1.5 py-0.5 rounded transition-colors">↺</button>
      </div>
    </div>
    <div className="grid grid-cols-2 gap-3">
      <div>
        <div className="flex justify-between mb-1">
          <span className="text-[9px] font-bold text-[#8c948a] uppercase ml-1">← X →</span>
          <span className="text-[9px] font-black text-[#8dc73f] bg-[#f3f7f4] px-1.5 py-0.5 rounded">{value.x}</span>
        </div>
        <div className="tele-slider">
          <div className="tele-slider__track" />
          <div className="tele-slider__fill" style={{ width: `${((value.x + 40) / 80) * 100}%` }} />
          <input type="range" min={-40} max={40} step={0.5} value={value.x} onChange={(e) => onChange({ ...value, x: parseFloat(e.target.value) })} className="tele-slider__input" />
        </div>
      </div>
      <div>
        <div className="flex justify-between mb-1">
          <span className="text-[9px] font-bold text-[#8c948a] uppercase ml-1">↑ Y ↓</span>
          <span className="text-[9px] font-black text-[#8dc73f] bg-[#f3f7f4] px-1.5 py-0.5 rounded">{value.y}</span>
        </div>
        <div className="tele-slider">
          <div className="tele-slider__track" />
          <div className="tele-slider__fill" style={{ width: `${((value.y + 40) / 80) * 100}%` }} />
          <input type="range" min={-40} max={40} step={0.5} value={value.y} onChange={(e) => onChange({ ...value, y: parseFloat(e.target.value) })} className="tele-slider__input" />
        </div>
      </div>
    </div>
  </div>
);

const ValueTweakSlider = ({
  label,
  value,
  min,
  max,
  step = 1,
  onChange,
  onReset,
  format,
}: {
  label: string;
  value: number;
  min: number;
  max: number;
  step?: number;
  onChange: (v: number) => void;
  onReset: () => void;
  format?: (v: number) => string;
}) => {
  const progress = ((value - min) / Math.max(1, max - min)) * 100;
  return (
    <div className="space-y-2">
      <div className="flex items-center justify-between px-1">
        <span className="text-[10px] font-black text-[#444b43] uppercase tracking-wider">{label}</span>
        <div className="flex items-center gap-2">
          <span className="text-[9px] font-bold text-[#8c948a]">{format ? format(value) : value}</span>
          <button onClick={onReset} title="Reset to default" className="text-[9px] font-black text-[#8c948a] hover:text-[#8dc73f] bg-[#f3f7f4] hover:bg-[#ebf2ee] px-1.5 py-0.5 rounded transition-colors">↺</button>
        </div>
      </div>
      <div className="tele-slider">
        <div className="tele-slider__track" />
        <div className="tele-slider__fill" style={{ width: `${progress}%` }} />
        <input
          type="range"
          min={min}
          max={max}
          step={step}
          value={value}
          onChange={(e) => onChange(parseFloat(e.target.value))}
          className="tele-slider__input"
        />
      </div>
    </div>
  );
};

export function App() {
  const [copied, setCopied] = useState(false);
  const [data, setData] = useState<ReceiptData>({
    preset: "test_accuracy",
    cameraHoleOverride: "default",
    navBarOverride: "default",
    downloadIconSize: 15,
    downloadIconX: 1,
    downloadIconY: 0,
    shareIconSize: 15,
    shareIconX: 0,
    shareIconY: 0,
    checkmarkSize: 36,
    checkmarkIconX: 0,
    checkmarkIconY: 1,
    checkmarkStroke: 2.8,
    amountFontSize: 31.5,
    amountStroke: 1.1,
    qrFontSize: 13,
    qrTextWeight: 600,
    qrTextStroke: 0,
    qrIconWidth: 24,
    qrIconHeight: 28,
    qrArrowWidth: 4.5,
    qrArrowHeight: 10,
    qrArrowStroke: 1.5,
    tableKeyWeight: 400,
    tableKeyStroke: 0.1,
    tableKeySize: 11,
    tableKeyColumnX: 0.5,
    tableKeyColumnY: -7,
    tableValWeight: 410,
    tableValStroke: 0,
    tableValSize: 11.2,
    tableValColumnX: -4.5,
    tableValColumnY: -8,
    dotSize: 7.5,
    finishedTextSize: 13,
    navIconSize: 20,
    bottomNavHeight: 42.5,
    bottomNavIconsX: 0,
    bottomNavIconsY: 0,
    iphoneContentNudgeY: -14.5,
    time: "11:43",
    battery: "48",
    batteryCharging: false,
    amount: "-2.00",
    transactionTime: "2026/02/20 11:42:49",
    transactionType: "Transfer Money",
    transactionTo: "MIKIYAS",
    transactionNumber: "DBK611YEXI",
    bannerIndex: 3,
    simCount: 2,
    signalStrength: 4,
    wifiStrength: 3,
    showBluetooth: false,
    silentMode: true,
    showLocation: true,
    showVolte: false,
    showMobileData: false,
    iosNetworkType: "5G",
    showHotspot: false,
    airplaneMode: false,
    showAlarm: false,
    showNfc: false,
    samsungOneUiEra: "oneui6",
    samsungNetworkTypeSim1: "LTE",
    samsungNetworkTypeSim2: "LTE",
    samsungShowNetworkLabel: true,
    samsungShowWifi: true,
    samsungShowSignal: true,
    samsungShowSim2Signal: false,
    samsungActiveDataSim: 1,
    samsungShowBatteryPercent: true,
    samsungShowBluetooth: false,
    samsungShowAirplane: false,
    samsungShowAlarm: true,
    samsungShowLocation: false,
    samsungShowHotspot: false,
    samsungShowVpn: false,
    samsungShowNfc: false,
    samsungNotificationMode: "none",
    samsungNotifMessages: false,
    samsungNotifPhone: false,
    samsungNotifWhatsApp: false,
    samsungNotifGmail: false,
    samsungNotifDownload: false,
    samsungNotifPlayStore: false,
    samsungNotifUsb: false,
    samsungSoundMode: "vibrate",
    samsungShowDnd: false,
    samsungShowRotationLock: false,
    samsungIconEnabled: {
      ...createSamsungIconEnabledState(),
      "alarm.jpg": true,
      "lte.jpg": true,
      "signal_strength.jpg": true,
      "wifi.jpg": true,
      "battery_level.jpg": true,
    },
    samsungNetworkTypeIcon: "lte.jpg",
    samsungSignalIcon: "signal_strength.jpg",
    samsungWifiIcon: "wifi.jpg",
    samsungBatteryIcon: "battery_level.jpg",
    use12HourFormat: false,
    layoutTweaks: {
      topActions: { x: 0, y: -2 },
      successBadge: { x: 0.5, y: -4.5 },
      successText: { x: 1.5, y: -5.5 },
      amountBlock: { x: -0.5, y: -7.5 },
      divider: { x: 0, y: -18.5 },
      table: { x: 2.5, y: -13.5 },
      qr: { x: -1, y: -23 },
      qrIcon: { x: 18, y: 0 },
      qrText: { x: 2, y: 1 },
      qrArrow: { x: -9, y: 0 },
      banner: { x: 0, y: -11, h: 105 },
      dots: { x: 0, y: -10.5 },
      finishedButton: { x: -6, y: -10.5 },
    },
  });

  const set = (patch: Partial<ReceiptData>) => setData(prev => ({ ...prev, ...patch }));

  const setSamsungCategoryIcon = <
    K extends "samsungNetworkTypeIcon" | "samsungSignalIcon" | "samsungWifiIcon" | "samsungBatteryIcon",
    F extends SamsungNetworkTypeIconFile | SamsungSignalIconFile | SamsungWifiIconFile | SamsungBatteryIconFile,
  >(
    key: K,
    file: F,
    categoryFiles: readonly F[],
  ) => {
    setData((prev) => {
      const nextEnabled = { ...prev.samsungIconEnabled };
      categoryFiles.forEach((candidate) => {
        nextEnabled[candidate] = false;
      });
      nextEnabled[file] = true;

      return {
        ...prev,
        [key]: file,
        samsungIconEnabled: nextEnabled,
      };
    });
  };

  const toggleSamsungSystemIcon = (file: SamsungSystemToggleIconFile) => {
    setData((prev) => ({
      ...prev,
      samsungIconEnabled: {
        ...prev.samsungIconEnabled,
        [file]: !prev.samsungIconEnabled[file],
      },
    }));
  };

  const setTweak = (key: keyof ReceiptLayoutTweaks, val: { x: number; y: number }) =>
    set({
      layoutTweaks: {
        ...data.layoutTweaks,
        [key]: {
          ...(data.layoutTweaks?.[key] ?? {}),
          ...val,
        } as ReceiptLayoutTweaks[keyof ReceiptLayoutTweaks],
      },
    });

  const setBannerHeight = (height: number) =>
    set({
      layoutTweaks: {
        ...data.layoutTweaks,
        banner: {
          ...(data.layoutTweaks?.banner ?? { x: 0, y: -2 }),
          h: height,
        },
      },
    });

  const resetAllTweaks = () =>
    set({
      layoutTweaks: {
        topActions: { x: 0, y: -2 },
        successBadge: { x: 0.5, y: -4.5 },
        successText: { x: 1.5, y: -5.5 },
        amountBlock: { x: -0.5, y: -7.5 },
        divider: { x: 0, y: -18.5 },
        table: { x: 2.5, y: -13.5 },
        qr: { x: -1, y: -23 },
        qrIcon: { x: 18, y: 0 },
        qrText: { x: 2, y: 1 },
        qrArrow: { x: -9, y: 0 },
        banner: { x: 0, y: -11, h: 105 },
        dots: { x: 0, y: -10.5 },
        finishedButton: { x: -6, y: -10.5 },
      },
      downloadIconSize: 15,
      downloadIconX: 1,
      downloadIconY: 0,
      shareIconSize: 15,
      shareIconX: 0,
      shareIconY: 0,
      checkmarkSize: 36,
      checkmarkIconX: 0,
      checkmarkIconY: 1,
      tableKeyWeight: 400,
      tableKeyStroke: 0.1,
      tableKeySize: 11,
      tableKeyColumnX: 0.5,
      tableKeyColumnY: -7,
      tableValWeight: 410,
      tableValStroke: 0,
      tableValSize: 11.2,
      tableValColumnX: -4.5,
      tableValColumnY: -8,
      dotSize: 7.5,
      finishedTextSize: 13,
      navIconSize: 20,
      checkmarkStroke: 2.8,
      amountFontSize: 31.5,
      amountStroke: 1.1,
      qrFontSize: 13,
      qrTextWeight: 600,
      qrTextStroke: 0,
      qrIconWidth: 24,
      qrIconHeight: 28,
      qrArrowWidth: 4.5,
      qrArrowHeight: 10,
      qrArrowStroke: 1.5,
      bottomNavHeight: 42.5,
      bottomNavIconsX: 0,
      bottomNavIconsY: 0,
      iphoneContentNudgeY: -14.5,
    });

  const generateRandomTransactionNumber = () => {
    const prefixes = ["DB", "TX", "RE", "BA", "CZ", "MN", "AA", "KL", "WF"];
    const prefix = prefixes[Math.floor(Math.random() * prefixes.length)];
    const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    let suffix = "";
    for (let i = 0; i < 8; i++) suffix += chars.charAt(Math.floor(Math.random() * chars.length));
    set({ transactionNumber: `${prefix}${suffix}` });
  };

  const setCurrentTime = () => {
    const now = new Date();
    set({
      time: now.toLocaleTimeString('en-GB', {
        hour: '2-digit',
        minute: '2-digit',
        hour12: data.use12HourFormat
      }).replace(/\s?[AP]M/i, (match) => match.toUpperCase())
    });
  };

  const setCurrentTransactionTime = () => {
    const now = new Date();
    const Y = now.getFullYear();
    const M = String(now.getMonth() + 1).padStart(2, '0');
    const D = String(now.getDate()).padStart(2, '0');
    const h = String(now.getHours()).padStart(2, '0');
    const m = String(now.getMinutes()).padStart(2, '0');
    const s = String(now.getSeconds()).padStart(2, '0');
    set({ transactionTime: `${Y}/${M}/${D} ${h}:${m}:${s}` });
  };

  const currentPreset = devicePresets[data.preset];
  const activePreset = currentPreset || devicePresets.test_accuracy;
  const currentOs = currentPreset?.os || "android";
  const isIos = currentOs === "ios";
  const isSamsungMode = data.preset === "samsung" || data.preset === "test_accuracy";

  const handlePresetChange = (newPreset: PresetKey) => {
    set({ preset: newPreset, cameraHoleOverride: "default", navBarOverride: "default" });
  };

  const handleDownload = async () => {
    const screenElement = document.getElementById(EXPORT_SCREEN_ID) as HTMLElement | null;
    if (!screenElement) return;
    let pixelRatio = 3;
    if (data.preset === "test_accuracy") pixelRatio = 2;

    const exportWidth = Number.parseInt(activePreset.width, 10);
    const exportHeight = Number.parseInt(activePreset.height, 10);

    try {
      await waitForCaptureReady(screenElement);
      const dataUrl = await toPng(screenElement, {
        quality: 1,
        pixelRatio,
        width: exportWidth,
        height: exportHeight,
        canvasWidth: exportWidth,
        canvasHeight: exportHeight,
        cacheBust: false,
        skipFonts: false,
        backgroundColor: "#ffffff",
        style: { transform: "none", transformOrigin: "top left" },
      });
      const link = document.createElement("a");
      link.download = `Telebirr_Receipt_${data.transactionNumber || new Date().getTime()}.png`;
      link.href = dataUrl;
      link.click();
    } catch (err) {
      console.error("Download failed:", err);
    }
  };

  const signalLabels = ["No Signal", "1 Bar", "2 Bars", "3 Bars", "Full"];
  const wifiLabels = ["Off", "Weak", "Medium", "Full"];

  return (
    <div className="flex flex-col md:flex-row h-screen bg-[#f8fbfa] font-sans overflow-hidden">
      {/* Editor Sidebar */}
      <div className="w-full md:w-[420px] bg-white border-r border-[#e8f0eb] flex flex-col z-30 shadow-[4px_0_24px_rgba(0,0,0,0.02)]">

        {/* Fixed Header */}
        <div className="p-6 pb-4 shrink-0">
          <div className="flex items-center gap-3 mb-1">
            <div className="bg-[#8dc73f] text-white w-10 h-10 rounded-xl flex items-center justify-center text-2xl font-black shadow-lg shadow-[#8dc73f]/20">T</div>
            <div>
              <h1 className="text-xl font-black text-[#1a1c19] leading-tight">Telebirr Pro</h1>
              <p className="text-[10px] text-[#8dc73f] font-bold uppercase tracking-widest">Premium Receipt Studio</p>
            </div>
          </div>
        </div>

        {/* Scrollable Body */}
        <div className="flex-1 overflow-y-auto px-6 py-4 space-y-8 custom-scrollbar">


          {/* Card: Device Configuration */}
          <section className="space-y-4">
            <div className="flex items-center gap-2 px-1">
              <div className="w-1 h-3 bg-[#8dc73f] rounded-full" />
              <h2 className="text-[11px] font-black text-[#444b43] uppercase tracking-[0.15em]">Device & Frame</h2>
            </div>
            <div className="bg-white border border-[#e8f0eb] p-5 rounded-2xl space-y-5 shadow-sm">
              <div className="space-y-1.5">
                <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">Device Model</label>
                <div className="relative">
                  <select
                    value={data.preset}
                    onChange={(e) => handlePresetChange(e.target.value as PresetKey)}
                    className="tele-select w-full min-w-0 appearance-none px-4 pr-10 py-2.5 bg-[#f3f7f4] border-transparent rounded-xl text-sm font-semibold text-[#2c312b] focus:ring-2 focus:ring-[#8dc73f] focus:outline-none transition-all cursor-pointer hover:bg-[#ebf2ee]"
                  >
                    {PRESET_OPTIONS.map((opt) => (
                      <option key={opt.value} value={opt.value}>{opt.label}</option>
                    ))}
                  </select>
                  <ChevronDown size={16} className="pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 text-[#8c948a]" />
                </div>
              </div>

              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                {!isIos && (
                  <div className="space-y-1.5">
                    <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">Camera Notch</label>
                    <div className="relative">
                      <select
                        value={data.cameraHoleOverride}
                        onChange={(e) => set({ cameraHoleOverride: e.target.value as any })}
                        className="tele-select w-full min-w-0 appearance-none px-3 pr-9 py-2 bg-[#f3f7f4] border-transparent rounded-xl text-[11px] font-bold text-[#2c312b] focus:ring-2 focus:ring-[#8dc73f] focus:outline-none transition-all"
                      >
                        <option value="default">Default</option>
                        <option value="left">Left</option>
                        <option value="center">Center</option>
                        <option value="none">Disabled</option>
                      </select>
                      <ChevronDown size={14} className="pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 text-[#8c948a]" />
                    </div>
                  </div>
                )}
                <div className="space-y-1.5 flex-1">
                  <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">Nav Bar Style</label>
                  <div className="relative">
                    <select
                      value={data.navBarOverride}
                      onChange={(e) => set({ navBarOverride: e.target.value as any })}
                      className="tele-select w-full min-w-0 appearance-none px-3 pr-9 py-2 bg-[#f3f7f4] border-transparent rounded-xl text-[11px] font-bold text-[#2c312b] focus:ring-2 focus:ring-[#8dc73f] focus:outline-none transition-all"
                    >
                      <option value="default">Default</option>
                      {!isIos && <option value="gestures">Gestures</option>}
                      {!isIos && <option value="buttons">3-Buttons</option>}
                      {isIos && <option value="home_indicator">Indicator</option>}
                      <option value="hidden">Hidden</option>
                    </select>
                    <ChevronDown size={14} className="pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 text-[#8c948a]" />
                  </div>
                </div>
              </div>

            </div>
          </section>

          {/* Card: Status Bar Management */}
          <section className="space-y-4">
            <div className="flex items-center gap-2 px-1">
              <div className="w-1 h-3 bg-[#8dc73f] rounded-full" />
              <h2 className="text-[11px] font-black text-[#444b43] uppercase tracking-[0.15em]">Status System</h2>
            </div>
            <div className="bg-white border border-[#e8f0eb] p-5 rounded-2xl space-y-6 shadow-sm">
              <div className="h-[2px] w-full bg-[#d4dbd7] rounded-full" />
              <div className="grid grid-cols-2 gap-4">
                <div className="space-y-1.5">
                  <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">Current Time</label>
                  <div className="flex bg-[#f3f7f4] p-1 rounded-lg gap-1 mb-2">
                    <button
                      onClick={() => set({ use12HourFormat: false })}
                      className={`flex-1 py-1 text-[9px] font-black rounded-md transition-all ${!data.use12HourFormat ? 'bg-white shadow-sm text-[#8dc73f]' : 'text-gray-400'}`}
                    >24 HOUR</button>
                    <button
                      onClick={() => set({ use12HourFormat: true })}
                      className={`flex-1 py-1 text-[9px] font-black rounded-md transition-all ${data.use12HourFormat ? 'bg-white shadow-sm text-[#8dc73f]' : 'text-gray-400'}`}
                    >12 HOUR</button>
                  </div>
                  <div className="flex gap-1">
                    <input
                      type="text"
                      value={data.time}
                      onChange={(e) => set({ time: e.target.value })}
                      className="flex-1 px-3 py-2 bg-[#f3f7f4] border-transparent rounded-xl text-sm font-bold text-[#2c312b] focus:ring-2 focus:ring-[#8dc73f] focus:outline-none min-w-0"
                    />
                    <button onClick={setCurrentTime} className="p-2 bg-[#f3f7f4] text-[#8dc73f] rounded-xl hover:bg-[#ebf2ee] transition-colors" title="Now">
                      <Clock size={16} />
                    </button>
                  </div>
                </div>
                <div className="space-y-1.5">
                  <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">Battery Level</label>
                  <div className="relative">
                    <input
                      type="text"
                      value={data.battery}
                      onChange={(e) => set({ battery: e.target.value })}
                      className="w-full px-3 py-2 bg-[#f3f7f4] border-transparent rounded-xl text-sm font-bold text-[#2c312b] focus:ring-2 focus:ring-[#8dc73f] focus:outline-none pr-7"
                    />
                    <span className="absolute right-3 top-1/2 -translate-y-1/2 text-xs font-bold text-[#8c948a]">%</span>
                  </div>
                </div>
              </div>

              {!isSamsungMode && (
                <div className="space-y-4">
                  <StepSlider
                    label="Signal Strength"
                    value={data.airplaneMode ? 0 : data.signalStrength}
                    min={0} max={4}
                    disabled={data.airplaneMode}
                    onChange={(v) => set({ signalStrength: v as 0 | 1 | 2 | 3 | 4 })}
                    format={(v) => data.airplaneMode ? "No Signal" : signalLabels[v]}
                  />
                  <StepSlider
                    label="WiFi Strength"
                    value={data.wifiStrength}
                    min={0} max={3}
                    disabled={data.airplaneMode}
                    onChange={(v) => set({ wifiStrength: v as 0 | 1 | 2 | 3 })}
                    format={(v) => data.airplaneMode ? "Off" : wifiLabels[v]}
                  />
                </div>
              )}

              {!isSamsungMode && (
                <>
                  <div className="grid grid-cols-4 gap-3 pt-2">
                    <PremiumToggle label="Plane" enabled={data.airplaneMode} onClick={() => set({ airplaneMode: !data.airplaneMode })} />
                    <PremiumToggle label="Charge" enabled={data.batteryCharging} onClick={() => set({ batteryCharging: !data.batteryCharging })} />
                    <PremiumToggle label="BT" enabled={data.showBluetooth} onClick={() => set({ showBluetooth: !data.showBluetooth })} />
                    <PremiumToggle label="Alarm" enabled={data.showAlarm} onClick={() => set({ showAlarm: !data.showAlarm })} />
                    {isIos && (
                      <>
                        <PremiumToggle label="Loc" enabled={data.showLocation} onClick={() => set({ showLocation: !data.showLocation })} />
                        <PremiumToggle label="Data" enabled={data.showMobileData} onClick={() => set({ showMobileData: !data.showMobileData })} />
                        <PremiumToggle label="Spot" enabled={data.showHotspot} onClick={() => set({ showHotspot: !data.showHotspot })} />
                      </>
                    )}
                    {!isIos && (
                      <>
                        <PremiumToggle label="Slnt" enabled={data.silentMode} onClick={() => set({ silentMode: !data.silentMode })} />
                        <PremiumToggle label="Loc" enabled={data.showLocation} onClick={() => set({ showLocation: !data.showLocation })} />
                        <PremiumToggle label="LTE" enabled={data.showVolte} onClick={() => set({ showVolte: !data.showVolte })} />
                        <PremiumToggle label="Data" enabled={data.showMobileData} onClick={() => set({ showMobileData: !data.showMobileData })} />
                        <PremiumToggle label="Spot" enabled={data.showHotspot} onClick={() => set({ showHotspot: !data.showHotspot })} />
                        <PremiumToggle label="NFC" enabled={data.showNfc} onClick={() => set({ showNfc: !data.showNfc })} />
                      </>
                    )}
                  </div>

                  {isIos && (
                    <div className="pt-2 space-y-1.5">
                      <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">iOS Data Label</label>
                      <div className="relative">
                        <select
                          value={data.iosNetworkType}
                          onChange={(e) => set({ iosNetworkType: e.target.value as ReceiptData["iosNetworkType"] })}
                          className="tele-select w-full min-w-0 appearance-none px-3 pr-9 py-2 bg-[#f3f7f4] border-transparent rounded-xl text-[11px] font-bold text-[#2c312b] focus:ring-2 focus:ring-[#8dc73f] focus:outline-none transition-all"
                        >
                          <option value="5G">5G</option>
                          <option value="5G+">5G+</option>
                          <option value="LTE">LTE</option>
                          <option value="4G">4G</option>
                          <option value="3G">3G</option>
                          <option value="E">E</option>
                        </select>
                        <ChevronDown size={14} className="pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 text-[#8c948a]" />
                      </div>
                    </div>
                  )}

                  {!isIos && (
                    <div className="pt-2">
                      <div className="flex items-center justify-between px-1">
                        <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider">Sim Configuration</label>
                        <div className="flex bg-[#f3f7f4] p-1 rounded-lg gap-1">
                          <button
                            onClick={() => set({ simCount: 1 })}
                            className={`px-3 py-1 text-[10px] font-black rounded-md transition-all ${data.simCount === 1 ? 'bg-white shadow-sm text-[#8dc73f]' : 'text-gray-400'}`}
                          >Single</button>
                          <button
                            onClick={() => set({ simCount: 2 })}
                            className={`px-3 py-1 text-[10px] font-black rounded-md transition-all ${data.simCount === 2 ? 'bg-white shadow-sm text-[#8dc73f]' : 'text-gray-400'}`}
                          >Dual</button>
                        </div>
                      </div>
                    </div>
                  )}
                </>
              )}

              {isSamsungMode && (
                <div className="space-y-5">
                  <StepSlider
                    label="WiFi Strength"
                    value={data.wifiStrength}
                    min={0}
                    max={3}
                    onChange={(v) => set({ wifiStrength: v as 0 | 1 | 2 | 3 })}
                    format={(v) => wifiLabels[v]}
                  />
                  <div className="space-y-1.5">
                    <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">Status Bar Icons</label>
                    <div className="grid grid-cols-4 gap-3">
                      <PremiumToggle
                        label="WiFi"
                        enabled={data.samsungShowWifi}
                        onClick={() =>
                          setData((prev) => {
                            const nextWifi = !prev.samsungShowWifi;
                            return {
                              ...prev,
                              samsungShowWifi: nextWifi,
                              samsungShowNetworkLabel: nextWifi ? false : prev.samsungShowNetworkLabel,
                            };
                          })
                        }
                      />
                      <PremiumToggle
                        label="Data"
                        enabled={data.samsungShowNetworkLabel}
                        onClick={() =>
                          setData((prev) => {
                            const nextData = !prev.samsungShowNetworkLabel;
                            return {
                              ...prev,
                              samsungShowNetworkLabel: nextData,
                              samsungShowWifi: nextData ? false : prev.samsungShowWifi,
                            };
                          })
                        }
                      />
                      <PremiumToggle
                        label="Signal"
                        enabled={data.samsungShowSignal}
                        onClick={() => set({ samsungShowSignal: !data.samsungShowSignal })}
                      />
                      <PremiumToggle
                        label="Bat%"
                        enabled={data.samsungShowBatteryPercent}
                        onClick={() => set({ samsungShowBatteryPercent: !data.samsungShowBatteryPercent })}
                      />
                      <PremiumToggle
                        label="Charge"
                        enabled={data.batteryCharging}
                        onClick={() => set({ batteryCharging: !data.batteryCharging })}
                      />
                      {SAMSUNG_SYSTEM_TOGGLE_ICON_FILES.map((file) => (
                        <PremiumToggle
                          key={file}
                          label={SAMSUNG_STATUS_ICON_LABELS[file]}
                          enabled={Boolean(data.samsungIconEnabled[file])}
                          onClick={() => toggleSamsungSystemIcon(file)}
                        />
                      ))}
                    </div>
                  </div>

                  <div className="space-y-1.5">
                    <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">Network Type (Single Active)</label>
                    <div className="grid grid-cols-3 gap-2">
                      {SAMSUNG_NETWORK_TYPE_ICON_FILES.map((file) => (
                        <button
                          key={file}
                          onClick={() => setSamsungCategoryIcon("samsungNetworkTypeIcon", file, SAMSUNG_NETWORK_TYPE_ICON_FILES)}
                          className={`px-2 py-2 rounded-lg text-[10px] font-black transition-all ${
                            data.samsungNetworkTypeIcon === file
                              ? "bg-[#8dc73f] text-white"
                              : "bg-[#f3f7f4] text-[#586057] hover:bg-[#ebf2ee]"
                          }`}
                        >
                          {SAMSUNG_STATUS_ICON_LABELS[file]}
                        </button>
                      ))}
                    </div>
                  </div>

                  <div className="space-y-1.5">
                    <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">Signal (Single Active)</label>
                    <div className="grid grid-cols-2 gap-2">
                      {SAMSUNG_SIGNAL_ICON_FILES.map((file) => (
                        <button
                          key={file}
                          onClick={() => setSamsungCategoryIcon("samsungSignalIcon", file, SAMSUNG_SIGNAL_ICON_FILES)}
                          className={`px-2 py-2 rounded-lg text-[10px] font-black transition-all ${
                            data.samsungSignalIcon === file
                              ? "bg-[#8dc73f] text-white"
                              : "bg-[#f3f7f4] text-[#586057] hover:bg-[#ebf2ee]"
                          }`}
                        >
                          {SAMSUNG_STATUS_ICON_LABELS[file]}
                        </button>
                      ))}
                    </div>
                  </div>

                  <div className="space-y-1.5">
                    <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">Wi-Fi (Single Active)</label>
                    <div className="grid grid-cols-3 gap-2">
                      {SAMSUNG_WIFI_ICON_FILES.map((file) => (
                        <button
                          key={file}
                          onClick={() => setSamsungCategoryIcon("samsungWifiIcon", file, SAMSUNG_WIFI_ICON_FILES)}
                          className={`px-2 py-2 rounded-lg text-[10px] font-black transition-all ${
                            data.samsungWifiIcon === file
                              ? "bg-[#8dc73f] text-white"
                              : "bg-[#f3f7f4] text-[#586057] hover:bg-[#ebf2ee]"
                          }`}
                        >
                          {SAMSUNG_STATUS_ICON_LABELS[file]}
                        </button>
                      ))}
                    </div>
                  </div>

                  <div className="space-y-1.5">
                    <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">Battery Icon (Single Active)</label>
                    <div className="grid grid-cols-2 gap-2">
                      {SAMSUNG_BATTERY_ICON_FILES.map((file) => (
                        <button
                          key={file}
                          onClick={() => setSamsungCategoryIcon("samsungBatteryIcon", file, SAMSUNG_BATTERY_ICON_FILES)}
                          className={`px-2 py-2 rounded-lg text-[10px] font-black transition-all ${
                            data.samsungBatteryIcon === file
                              ? "bg-[#8dc73f] text-white"
                              : "bg-[#f3f7f4] text-[#586057] hover:bg-[#ebf2ee]"
                          }`}
                        >
                          {SAMSUNG_STATUS_ICON_LABELS[file]}
                        </button>
                      ))}
                    </div>
                  </div>

                  {/* System toggles are consolidated into the Status Bar Icons block above */}
                </div>
              )}
            </div>
          </section>

          {/* Card: Transaction Data */}
          <section className="space-y-4">
            <div className="flex items-center gap-2 px-1">
              <div className="w-1 h-3 bg-[#8dc73f] rounded-full" />
              <h2 className="text-[11px] font-black text-[#444b43] uppercase tracking-[0.15em]">Transaction Proof</h2>
            </div>
            <div className="bg-white border border-[#e8f0eb] p-5 rounded-2xl space-y-5 shadow-sm">
              <div className="space-y-1.5">
                <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">Transfer Amount (ETB)</label>
                <div className="relative">
                  <span className="absolute left-4 top-1/2 -translate-y-1/2 text-[#8c948a] text-sm font-black opacity-50">ETB</span>
                  <input
                    type="text"
                    value={data.amount}
                    onChange={(e) => set({ amount: e.target.value })}
                    className="w-full pl-14 pr-4 py-3 bg-[#f3f7f4] border-transparent rounded-2xl text-xl font-black text-[#8dc73f] focus:shadow-inner focus:outline-none transition-all"
                  />
                </div>
              </div>

              <div className="space-y-1.5">
                <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">To Recipient</label>
                <input
                  type="text"
                  value={data.transactionTo}
                  onChange={(e) => set({ transactionTo: e.target.value })}
                  placeholder="e.g. MIKIYAS"
                  className="w-full px-4 py-2.5 bg-[#f3f7f4] border-transparent rounded-xl text-sm font-bold text-[#2c312b] focus:ring-2 focus:ring-[#8dc73f] focus:outline-none"
                />
              </div>

              <div className="space-y-1.5">
                <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">Transaction Time</label>
                <div className="flex gap-2">
                  <input
                    type="text"
                    value={data.transactionTime}
                    onChange={(e) => set({ transactionTime: e.target.value })}
                    className="flex-1 px-4 py-2.5 bg-[#f3f7f4] border-transparent rounded-xl text-xs font-bold text-[#2c312b] focus:ring-2 focus:ring-[#8dc73f] focus:outline-none"
                  />
                  <button onClick={setCurrentTransactionTime} className="p-2.5 bg-[#f3f7f4] text-[#8dc73f] rounded-xl hover:bg-[#ebf2ee] transition-colors" title="Now">
                    <Clock size={18} />
                  </button>
                </div>
              </div>

              <div className="space-y-1.5">
                <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">Transaction ID</label>
                <div className="flex gap-2">
                  <input
                    type="text"
                    value={data.transactionNumber}
                    onChange={(e) => set({ transactionNumber: e.target.value })}
                    className="flex-1 px-4 py-2.5 bg-[#f3f7f4] border-transparent rounded-xl text-xs font-mono font-bold text-[#2c312b] uppercase tracking-tighter focus:ring-2 focus:ring-[#8dc73f] focus:outline-none"
                  />
                  <button onClick={generateRandomTransactionNumber} className="p-2.5 bg-[#f3f7f4] text-[#8dc73f] rounded-xl hover:bg-[#ebf2ee] transition-colors shadow-sm" title="Randomize">
                    <RefreshCcw size={18} />
                  </button>
                </div>
              </div>
            </div>
          </section>

          {/* Card: Visual Aesthetics */}
          <section className="space-y-4">
            <div className="flex items-center gap-2 px-1">
              <div className="w-1 h-3 bg-[#8dc73f] rounded-full" />
              <h2 className="text-[11px] font-black text-[#444b43] uppercase tracking-[0.15em]">Visual Content</h2>
            </div>
            <div className="bg-white border border-[#e8f0eb] p-5 rounded-2xl space-y-5 shadow-sm">
              <div className="space-y-1.5">
                <label className="text-[10px] font-bold text-[#8c948a] uppercase tracking-wider ml-1">Marketing Banner</label>
                <div className="grid grid-cols-5 gap-2">
                  {BANNER_SLOTS.map((i) => (
                    <button
                      key={i}
                      onClick={() => set({ bannerIndex: i })}
                      className={`relative aspect-video rounded-lg overflow-hidden border-2 transition-all ${data.bannerIndex === i ? 'border-[#8dc73f] scale-[1.02] shadow-md shadow-[#8dc73f]/10' : 'border-transparent opacity-60 hover:opacity-100 hover:border-[#ebf2ee]'}`}
                    >
                      {getBannerSrc(i) ? (
                        <img src={getBannerSrc(i)} alt={`B${i}`} className="w-full h-full object-cover" />
                      ) : (
                        <div className="w-full h-full bg-[#edf3ef]" />
                      )}
                      <div className={`absolute inset-0 flex items-center justify-center bg-[#8dc73f]/10 ${data.bannerIndex === i ? 'opacity-100' : 'opacity-0'}`}>
                        <div className="bg-[#8dc73f] text-white w-4 h-4 rounded-full flex items-center justify-center text-[8px] font-black">✓</div>
                      </div>
                    </button>
                  ))}
                </div>
              </div>
            </div>
          </section>

          {/* Card: Position Tweaks */}
          <section className="space-y-4">
            <div className="flex items-center gap-2 px-1">
              <div className="w-1 h-3 bg-[#8dc73f] rounded-full" />
              <h2 className="text-[11px] font-black text-[#444b43] uppercase tracking-[0.15em]">Position Tweaks</h2>
            </div>
            <div className="bg-white border border-[#e8f0eb] p-5 rounded-2xl space-y-5 shadow-sm">
              <XYTweakSlider label="Download / Share Row" value={{ x: data.layoutTweaks?.topActions?.x ?? 0, y: data.layoutTweaks?.topActions?.y ?? -2 }} onChange={(v) => setTweak("topActions", v)} onReset={() => setTweak("topActions", { x: 0, y: -2 })} />
              {isIos && (
                <ValueTweakSlider
                  label="iPhone Whole Y Nudge"
                  value={data.iphoneContentNudgeY}
                  min={-80}
                  max={80}
                  step={0.5}
                  onChange={(v) => set({ iphoneContentNudgeY: Number(v.toFixed(1)) })}
                  onReset={() => set({ iphoneContentNudgeY: -14.5 })}
                  format={(v) => `${v.toFixed(1)}px`}
                />
              )}
              <XYTweakSlider label="Download Icon (Only)" value={{ x: data.downloadIconX, y: data.downloadIconY }} onChange={(v) => set({ downloadIconX: v.x, downloadIconY: v.y })} onReset={() => set({ downloadIconX: 1, downloadIconY: 0 })} />
              <XYTweakSlider label="Share Icon (Only)" value={{ x: data.shareIconX, y: data.shareIconY }} onChange={(v) => set({ shareIconX: v.x, shareIconY: v.y })} onReset={() => set({ shareIconX: 0, shareIconY: 0 })} />
              <XYTweakSlider label="Checkmark Badge" value={{ x: data.layoutTweaks?.successBadge?.x ?? 0.5, y: data.layoutTweaks?.successBadge?.y ?? -4.5 }} onChange={(v) => setTweak("successBadge", v)} onReset={() => setTweak("successBadge", { x: 0.5, y: -4.5 })} />
              <XYTweakSlider label="Checkmark Icon" value={{ x: data.checkmarkIconX, y: data.checkmarkIconY }} onChange={(v) => set({ checkmarkIconX: v.x, checkmarkIconY: v.y })} onReset={() => set({ checkmarkIconX: 0, checkmarkIconY: 1 })} />
              <XYTweakSlider label="Successful Text" value={{ x: data.layoutTweaks?.successText?.x ?? 1.5, y: data.layoutTweaks?.successText?.y ?? -5.5 }} onChange={(v) => setTweak("successText", v)} onReset={() => setTweak("successText", { x: 1.5, y: -5.5 })} />
              <XYTweakSlider label="Amount Block" value={{ x: data.layoutTweaks?.amountBlock?.x ?? -0.5, y: data.layoutTweaks?.amountBlock?.y ?? -7.5 }} onChange={(v) => setTweak("amountBlock", v)} onReset={() => setTweak("amountBlock", { x: -0.5, y: -7.5 })} />
              <XYTweakSlider label="Divider Line" value={{ x: data.layoutTweaks?.divider?.x ?? 0, y: data.layoutTweaks?.divider?.y ?? -18.5 }} onChange={(v) => setTweak("divider", v)} onReset={() => setTweak("divider", { x: 0, y: -18.5 })} />
              <XYTweakSlider label="Table Block (whole)" value={{ x: data.layoutTweaks?.table?.x ?? 2.5, y: data.layoutTweaks?.table?.y ?? -13.5 }} onChange={(v) => setTweak("table", v)} onReset={() => setTweak("table", { x: 2.5, y: -13.5 })} />
              <div className="h-px bg-[#f0f3ec]" />
              <XYTweakSlider label="Left Column (Labels)" value={{ x: data.tableKeyColumnX, y: data.tableKeyColumnY }} onChange={(v) => set({ tableKeyColumnX: v.x, tableKeyColumnY: v.y })} onReset={() => set({ tableKeyColumnX: 0.5, tableKeyColumnY: -7 })} />
              <XYTweakSlider label="Right Column (Values)" value={{ x: data.tableValColumnX, y: data.tableValColumnY }} onChange={(v) => set({ tableValColumnX: v.x, tableValColumnY: v.y })} onReset={() => set({ tableValColumnX: -4.5, tableValColumnY: -8 })} />
              <div className="h-px bg-[#f0f3ec]" />
              <XYTweakSlider label="QR Row (whole)" value={{ x: data.layoutTweaks?.qr?.x ?? -1, y: data.layoutTweaks?.qr?.y ?? -23 }} onChange={(v) => setTweak("qr", v)} onReset={() => setTweak("qr", { x: -1, y: -23 })} />
              <XYTweakSlider label="QR Icon" value={{ x: data.layoutTweaks?.qrIcon?.x ?? 18, y: data.layoutTweaks?.qrIcon?.y ?? 0 }} onChange={(v) => setTweak("qrIcon", v)} onReset={() => setTweak("qrIcon", { x: 18, y: 0 })} />
              <XYTweakSlider label="QR Text" value={{ x: data.layoutTweaks?.qrText?.x ?? 2, y: data.layoutTweaks?.qrText?.y ?? 1 }} onChange={(v) => setTweak("qrText", v)} onReset={() => setTweak("qrText", { x: 2, y: 1 })} />
              <XYTweakSlider label="QR Arrow" value={{ x: data.layoutTweaks?.qrArrow?.x ?? -9, y: data.layoutTweaks?.qrArrow?.y ?? 0 }} onChange={(v) => setTweak("qrArrow", v)} onReset={() => setTweak("qrArrow", { x: -9, y: 0 })} />
              <div className="h-px bg-[#f0f3ec]" />
              <ValueTweakSlider label="QR Text Size" value={data.qrFontSize} min={10} max={22} step={0.1} onChange={(v) => set({ qrFontSize: Number(v.toFixed(1)) })} onReset={() => set({ qrFontSize: 13 })} format={(v) => `${v.toFixed(1)}px`} />
              <ValueTweakSlider label="QR Text Weight" value={data.qrTextWeight} min={300} max={900} step={10} onChange={(v) => set({ qrTextWeight: v })} onReset={() => set({ qrTextWeight: 600 })} />
              <ValueTweakSlider label="QR Text Stroke" value={data.qrTextStroke} min={0} max={1} step={0.02} onChange={(v) => set({ qrTextStroke: v })} onReset={() => set({ qrTextStroke: 0 })} format={(v) => `${v}px`} />
              <ValueTweakSlider label="QR Icon Width" value={data.qrIconWidth} min={10} max={50} onChange={(v) => set({ qrIconWidth: v })} onReset={() => set({ qrIconWidth: 24 })} format={(v) => `${v}px`} />
              <ValueTweakSlider label="QR Icon Height" value={data.qrIconHeight} min={10} max={50} onChange={(v) => set({ qrIconHeight: v })} onReset={() => set({ qrIconHeight: 28 })} format={(v) => `${v}px`} />
              <ValueTweakSlider label="QR Arrow Width" value={data.qrArrowWidth} min={2} max={30} step={0.5} onChange={(v) => set({ qrArrowWidth: v })} onReset={() => set({ qrArrowWidth: 4.5 })} format={(v) => `${v}px`} />
              <ValueTweakSlider label="QR Arrow Height" value={data.qrArrowHeight} min={5} max={40} step={0.5} onChange={(v) => set({ qrArrowHeight: v })} onReset={() => set({ qrArrowHeight: 10 })} format={(v) => `${v}px`} />
              <ValueTweakSlider label="QR Arrow Stroke" value={data.qrArrowStroke} min={0.5} max={5} step={0.1} onChange={(v) => set({ qrArrowStroke: v })} onReset={() => set({ qrArrowStroke: 1.5 })} format={(v) => `${v}px`} />
              <div className="h-px bg-[#f0f3ec]" />
              <XYTweakSlider label="Banner" value={{ x: data.layoutTweaks?.banner?.x ?? 0, y: data.layoutTweaks?.banner?.y ?? -11 }} onChange={(v) => setTweak("banner", v)} onReset={() => setTweak("banner", { x: 0, y: -11 })} />
              <XYTweakSlider label="Dots" value={{ x: data.layoutTweaks?.dots?.x ?? 0, y: data.layoutTweaks?.dots?.y ?? -10.5 }} onChange={(v) => setTweak("dots", v)} onReset={() => setTweak("dots", { x: 0, y: -10.5 })} />
              <XYTweakSlider label="Finished Button" value={{ x: data.layoutTweaks?.finishedButton?.x ?? -6, y: data.layoutTweaks?.finishedButton?.y ?? -10.5 }} onChange={(v) => setTweak("finishedButton", v)} onReset={() => setTweak("finishedButton", { x: -6, y: -10.5 })} />
              <div className="h-px bg-[#f0f3ec]" />
              <ValueTweakSlider label="Banner Height" value={Math.round(data.layoutTweaks?.banner?.h ?? 105)} min={88} max={140} onChange={setBannerHeight} onReset={() => setBannerHeight(105)} format={(v) => `${Math.round(v)}px`} />
              <ValueTweakSlider label="Dots Size" value={data.dotSize} min={6.5} max={9} step={0.1} onChange={(v) => set({ dotSize: Number(v.toFixed(1)) })} onReset={() => set({ dotSize: 7.5 })} format={(v) => `${v.toFixed(1)}px`} />
              <ValueTweakSlider label="Finished Text Size" value={data.finishedTextSize} min={10} max={20} step={0.1} onChange={(v) => set({ finishedTextSize: Number(v.toFixed(1)) })} onReset={() => set({ finishedTextSize: 13 })} format={(v) => `${v.toFixed(1)}px`} />
              <ValueTweakSlider label="Checkmark Size" value={data.checkmarkSize} min={20} max={45} onChange={(v) => set({ checkmarkSize: Math.round(v) })} onReset={() => set({ checkmarkSize: 36 })} format={(v) => `${Math.round(v)}px`} />
              <ValueTweakSlider label="Checkmark Stroke" value={data.checkmarkStroke} min={0.5} max={5} step={0.1} onChange={(v) => set({ checkmarkStroke: v })} onReset={() => set({ checkmarkStroke: 2.8 })} format={(v) => `${v}px`} />
              <ValueTweakSlider label="Amount Font Size" value={data.amountFontSize} min={20} max={45} step={0.5} onChange={(v) => set({ amountFontSize: v })} onReset={() => set({ amountFontSize: 31.5 })} format={(v) => `${v}px`} />
              <ValueTweakSlider label="Amount Stroke" value={data.amountStroke} min={0} max={2.5} step={0.05} onChange={(v) => set({ amountStroke: v })} onReset={() => set({ amountStroke: 1.1 })} format={(v) => `${v}px`} />
              <ValueTweakSlider label="Download Icon Size" value={data.downloadIconSize} min={12} max={24} onChange={(v) => set({ downloadIconSize: Math.round(v) })} onReset={() => set({ downloadIconSize: 15 })} format={(v) => `${Math.round(v)}px`} />
              <ValueTweakSlider label="Share Icon Size" value={data.shareIconSize} min={12} max={24} onChange={(v) => set({ shareIconSize: Math.round(v) })} onReset={() => set({ shareIconSize: 15 })} format={(v) => `${Math.round(v)}px`} />
              <ValueTweakSlider label="Bottom Nav Height" value={data.bottomNavHeight} min={36} max={52} step={0.5} onChange={(v) => set({ bottomNavHeight: Number(v.toFixed(1)) })} onReset={() => set({ bottomNavHeight: 42.5 })} format={(v) => `${v.toFixed(1)}px`} />
              <ValueTweakSlider label="Bottom Nav Icon Size" value={data.navIconSize} min={14} max={26} step={0.5} onChange={(v) => set({ navIconSize: Number(v.toFixed(1)) })} onReset={() => set({ navIconSize: 20 })} format={(v) => `${v.toFixed(1)}px`} />
              <XYTweakSlider label="Bottom Nav Icons" value={{ x: data.bottomNavIconsX, y: data.bottomNavIconsY }} onChange={(v) => set({ bottomNavIconsX: v.x, bottomNavIconsY: v.y })} onReset={() => set({ bottomNavIconsX: 0, bottomNavIconsY: 0 })} />
              <div className="h-px bg-[#f0f3ec]" />
              <ValueTweakSlider label="Table Key Weight" value={data.tableKeyWeight} min={300} max={900} step={10} onChange={(v) => set({ tableKeyWeight: Math.round(v) })} onReset={() => set({ tableKeyWeight: 400 })} />
              <ValueTweakSlider label="Table Key Size" value={data.tableKeySize} min={9} max={16} step={0.1} onChange={(v) => set({ tableKeySize: Number(v.toFixed(1)) })} onReset={() => set({ tableKeySize: 11 })} format={(v) => `${v.toFixed(1)}px`} />
              <ValueTweakSlider label="Table Key Stroke" value={data.tableKeyStroke} min={0} max={0.8} step={0.02} onChange={(v) => set({ tableKeyStroke: Number(v.toFixed(2)) })} onReset={() => set({ tableKeyStroke: 0.1 })} format={(v) => `${v.toFixed(2)}px`} />
              <ValueTweakSlider label="Table Value Weight" value={data.tableValWeight} min={300} max={900} step={10} onChange={(v) => set({ tableValWeight: Math.round(v) })} onReset={() => set({ tableValWeight: 410 })} />
              <ValueTweakSlider label="Table Value Size" value={data.tableValSize} min={9} max={16} step={0.1} onChange={(v) => set({ tableValSize: Number(v.toFixed(1)) })} onReset={() => set({ tableValSize: 11.2 })} format={(v) => `${v.toFixed(1)}px`} />
              <ValueTweakSlider label="Table Value Stroke" value={data.tableValStroke} min={0} max={0.8} step={0.02} onChange={(v) => set({ tableValStroke: Number(v.toFixed(2)) })} onReset={() => set({ tableValStroke: 0 })} format={(v) => `${v.toFixed(2)}px`} />
              <button
                onClick={resetAllTweaks}
                className="w-full py-2 rounded-xl border border-[#e8f0eb] text-[10px] font-black text-[#8c948a] uppercase tracking-wider hover:bg-[#f3f7f4] transition-colors"
              >
                Reset All
              </button>
              <button
                onClick={() => {
                  const t = data.layoutTweaks ?? {};
                  const lines = [
                    `preset: ${data.preset}`,
                    `cameraHoleOverride: ${data.cameraHoleOverride}`,
                    `navBarOverride: ${data.navBarOverride}`,
                    `airplaneMode: ${data.airplaneMode}`,
                    `batteryCharging: ${data.batteryCharging}`,
                    `showBluetooth: ${data.showBluetooth}`,
                    `showAlarm: ${data.showAlarm}`,
                    `simCount: ${data.simCount}`,
                    `use12HourFormat: ${data.use12HourFormat}`,
                    `signalStrength: ${data.signalStrength}`,
                    `wifiStrength: ${data.wifiStrength}`,
                    `silentMode: ${data.silentMode}`,
                    `showLocation: ${data.showLocation}`,
                    `showVolte: ${data.showVolte}`,
                    `showMobileData: ${data.showMobileData}`,
                    `iosNetworkType: ${data.iosNetworkType}`,
                    `showHotspot: ${data.showHotspot}`,
                    `showNfc: ${data.showNfc}`,
                    `samsungOneUiEra: ${data.samsungOneUiEra}`,
                    `samsungNetworkTypeSim1: ${data.samsungNetworkTypeSim1}`,
                    `samsungNetworkTypeSim2: ${data.samsungNetworkTypeSim2}`,
                    `samsungShowWifi: ${data.samsungShowWifi}`,
                    `samsungShowSignal: ${data.samsungShowSignal}`,
                    `samsungShowNetworkLabel: ${data.samsungShowNetworkLabel}`,
                    `samsungShowSim2Signal: ${data.samsungShowSim2Signal}`,
                    `samsungActiveDataSim: ${data.samsungActiveDataSim}`,
                    `samsungShowBatteryPercent: ${data.samsungShowBatteryPercent}`,
                    `samsungShowBluetooth: ${data.samsungShowBluetooth}`,
                    `samsungShowAirplane: ${data.samsungShowAirplane}`,
                    `samsungShowAlarm: ${data.samsungShowAlarm}`,
                    `samsungShowLocation: ${data.samsungShowLocation}`,
                    `samsungShowHotspot: ${data.samsungShowHotspot}`,
                    `samsungShowVpn: ${data.samsungShowVpn}`,
                    `samsungShowNfc: ${data.samsungShowNfc}`,
                    `samsungNetworkTypeIcon: ${data.samsungNetworkTypeIcon}`,
                    `samsungSignalIcon: ${data.samsungSignalIcon}`,
                    `samsungWifiIcon: ${data.samsungWifiIcon}`,
                    `samsungBatteryIcon: ${data.samsungBatteryIcon}`,
                    `samsungIconEnabled: ${JSON.stringify(data.samsungIconEnabled)}`,
                    `samsungNotificationMode: ${data.samsungNotificationMode}`,
                    `samsungNotifMessages: ${data.samsungNotifMessages}`,
                    `samsungNotifPhone: ${data.samsungNotifPhone}`,
                    `samsungNotifWhatsApp: ${data.samsungNotifWhatsApp}`,
                    `samsungNotifGmail: ${data.samsungNotifGmail}`,
                    `samsungNotifDownload: ${data.samsungNotifDownload}`,
                    `samsungNotifPlayStore: ${data.samsungNotifPlayStore}`,
                    `samsungNotifUsb: ${data.samsungNotifUsb}`,
                    `samsungSoundMode: ${data.samsungSoundMode}`,
                    `samsungShowDnd: ${data.samsungShowDnd}`,
                    `samsungShowRotationLock: ${data.samsungShowRotationLock}`,
                    `iphoneContentNudgeY: ${data.iphoneContentNudgeY}`,
                    `topActions:    x:${t.topActions?.x ?? 0} y:${t.topActions?.y ?? -2}`,
                    `successBadge:  x:${t.successBadge?.x ?? 0.5} y:${t.successBadge?.y ?? -4.5}`,
                    `successText:   x:${t.successText?.x ?? 0} y:${t.successText?.y ?? -5}`,
                    `amountBlock:   x:${t.amountBlock?.x ?? -0.5} y:${t.amountBlock?.y ?? -6.5}`,
                    `divider:       x:${t.divider?.x ?? 0} y:${t.divider?.y ?? -12}`,
                    `table:         x:${t.table?.x ?? 2.5} y:${t.table?.y ?? -13.5}`,
                    `qr:            x:${t.qr?.x ?? 0} y:${t.qr?.y ?? -12.5}`,
                    `qrIcon:        x:${t.qrIcon?.x ?? 18} y:${t.qrIcon?.y ?? 0}`,
                    `qrText:        x:${t.qrText?.x ?? 2} y:${t.qrText?.y ?? 1}`,
                    `qrArrow:       x:${t.qrArrow?.x ?? -9} y:${t.qrArrow?.y ?? 0}`,
                    `qrFontSize: ${data.qrFontSize}`,
                    `qrTextWeight: ${data.qrTextWeight}`,
                    `qrTextStroke: ${data.qrTextStroke}`,
                    `qrIconWidth: ${data.qrIconWidth}`,
                    `qrIconHeight: ${data.qrIconHeight}`,
                    `qrArrowWidth: ${data.qrArrowWidth}`,
                    `qrArrowHeight: ${data.qrArrowHeight}`,
                    `qrArrowStroke: ${data.qrArrowStroke}`,
                    `banner:        x:${t.banner?.x ?? 0} y:${t.banner?.y ?? -2} h:${t.banner?.h ?? 105}`,
                    `bannerHeight: ${data.layoutTweaks?.banner?.h ?? 105}`,
                    `dots:          x:${t.dots?.x ?? 0} y:${t.dots?.y ?? -1.5}`,
                    `finishedButton:x:${t.finishedButton?.x ?? -0.5} y:${t.finishedButton?.y ?? 0}`,
                    `dotSize: ${data.dotSize}`,
                    `finishedTextSize: ${data.finishedTextSize}`,
                    `checkmarkSize: ${data.checkmarkSize}`,
                    `checkmarkStroke: ${data.checkmarkStroke}`,
                    `checkmarkIcon: x:${data.checkmarkIconX} y:${data.checkmarkIconY}`,
                    `amountFontSize: ${data.amountFontSize}`,
                    `amountStroke: ${data.amountStroke}`,
                    `downloadIconSize: ${data.downloadIconSize}`,
                    `downloadIcon: x:${data.downloadIconX} y:${data.downloadIconY}`,
                    `shareIconSize: ${data.shareIconSize}`,
                    `shareIcon: x:${data.shareIconX} y:${data.shareIconY}`,
                    `bottomNavHeight: ${data.bottomNavHeight}`,
                    `bottomNavIconSize: ${data.navIconSize}`,
                    `bottomNavIcons: x:${data.bottomNavIconsX} y:${data.bottomNavIconsY}`,
                    `tableKeyWeight: ${data.tableKeyWeight}`,
                    `tableKeySize: ${data.tableKeySize}`,
                    `tableKeyStroke: ${data.tableKeyStroke}`,
                    `tableKeyColumn: x:${data.tableKeyColumnX} y:${data.tableKeyColumnY}`,
                    `tableValWeight: ${data.tableValWeight}`,
                    `tableValSize: ${data.tableValSize}`,
                    `tableValStroke: ${data.tableValStroke}`,
                    `tableValColumn: x:${data.tableValColumnX} y:${data.tableValColumnY}`,
                  ].join("\n");
                  navigator.clipboard.writeText(lines);
                  setCopied(true);
                  setTimeout(() => setCopied(false), 2000);
                }}
                className={`w-full py-2 rounded-xl text-[10px] font-black uppercase tracking-wider transition-all duration-300 flex items-center justify-center gap-2 ${copied ? 'bg-[#8dc73f] text-white' : 'bg-[#f3f7f4] text-[#8dc73f] hover:bg-[#ebf2ee]'}`}
              >
                {copied ? <><Check size={12} /> Values Copied!</> : "Copy Values"}
              </button>
            </div>
          </section>

        </div>

        {/* Global Action Footer - Truly Flush */}
        <div className="p-6 bg-white border-t border-[#e8f0eb] shadow-[0_-12px_24px_rgba(0,0,0,0.03)] shrink-0">
          <button
            onClick={handleDownload}
            className="w-full group relative overflow-hidden flex justify-center items-center py-4 px-6 rounded-2xl bg-[#8dc73f] hover:bg-[#7db137] text-white font-black text-lg transition-all shadow-xl shadow-[#8dc73f]/20 active:scale-[0.98]"
          >
            <Download className="mr-3 h-6 w-6 transition-transform group-hover:-translate-y-0.5" />
            DOWNLOAD PNG
            <div className="absolute inset-x-0 bottom-0 h-1 bg-white/20 transform scale-x-0 group-hover:scale-x-100 transition-transform" />
          </button>
        </div>
      </div>

      {/* Preview Area Container */}
      <div className="flex-1 bg-[#f0f2f1] flex items-center justify-center p-6 md:p-8 overflow-hidden">
        <TelebirrReceipt data={data} isPreview={true} />
      </div>

      {/* Dedicated unscaled export target for deterministic PNG output */}
      <div className="fixed -left-[99999px] top-0 opacity-0 pointer-events-none" aria-hidden="true">
        <div style={{ width: activePreset.width, height: activePreset.height }}>
          <TelebirrReceipt data={data} captureId={EXPORT_SCREEN_ID} />
        </div>
      </div>
    </div>
  );
}
