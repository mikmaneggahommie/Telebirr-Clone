import { useState } from "react";
import { toPng } from "html-to-image";
import { Download, RefreshCcw, Clock, ChevronDown } from "lucide-react";
import { TelebirrReceipt, ReceiptData, devicePresets, PresetKey, getBannerSrc, BANNER_SLOTS } from "./components/TelebirrReceipt";

const PRESET_OPTIONS: { value: PresetKey; label: string }[] = [
  { value: "iphone_modern", label: "iPhone (Modern — Dynamic Island)" },
  { value: "iphone_classic", label: "iPhone (Classic — Notch)" },
  { value: "samsung", label: "Samsung" },
  { value: "generic_android", label: "Generic Android" },
  { value: "test_accuracy", label: "Test Accuracy Mode (720×1560)" },
];

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

export function App() {
  const [data, setData] = useState<ReceiptData>({
    preset: "test_accuracy",
    cameraHoleOverride: "default",
    navBarOverride: "default",
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
    showVolte: true,
    airplaneMode: false,
    showAlarm: false,
    showNfc: false,
    use12HourFormat: false,
    layoutTweaks: {
      qr: { x: 0, y: 0 },
      banner: { x: 0, y: 0 },
      dots: { x: 0, y: 0 },
      finishedButton: { x: 0, y: 0 },
    },
  });

  const set = (patch: Partial<ReceiptData>) => setData(prev => ({ ...prev, ...patch }));

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
  const currentOs = currentPreset?.os || "android";
  const isIos = currentOs === "ios";

  const handlePresetChange = (newPreset: PresetKey) => {
    set({ preset: newPreset, cameraHoleOverride: "default", navBarOverride: "default" });
  };

  const handleDownload = async () => {
    const screenElement = document.getElementById("receipt-screen");
    if (!screenElement) return;
    let pixelRatio = isIos ? 2.5 : 3;
    if (data.preset === "test_accuracy") pixelRatio = 2.0;
    try {
      const dataUrl = await toPng(screenElement, {
        quality: 1, pixelRatio, cacheBust: true,
        backgroundColor: "#ffffff", style: { transform: 'scale(1)' },
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

              <div className="grid grid-cols-4 gap-3 pt-2">
                <PremiumToggle label="Plane" enabled={data.airplaneMode} onClick={() => set({ airplaneMode: !data.airplaneMode })} />
                <PremiumToggle label="Charge" enabled={data.batteryCharging} onClick={() => set({ batteryCharging: !data.batteryCharging })} />
                <PremiumToggle label="BT" enabled={data.showBluetooth} onClick={() => set({ showBluetooth: !data.showBluetooth })} />
                <PremiumToggle label="Alarm" enabled={data.showAlarm} onClick={() => set({ showAlarm: !data.showAlarm })} />
                {!isIos && (
                  <>
                    <PremiumToggle label="Slnt" enabled={data.silentMode} onClick={() => set({ silentMode: !data.silentMode })} />
                    <PremiumToggle label="Loc" enabled={data.showLocation} onClick={() => set({ showLocation: !data.showLocation })} />
                    <PremiumToggle label="LTE" enabled={data.showVolte} onClick={() => set({ showVolte: !data.showVolte })} />
                    <PremiumToggle label="NFC" enabled={data.showNfc} onClick={() => set({ showNfc: !data.showNfc })} />
                  </>
                )}
              </div>

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
    </div>
  );
}
