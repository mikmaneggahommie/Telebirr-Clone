import { useState } from "react";
import { toPng } from "html-to-image";
import { Download, RefreshCcw } from "lucide-react";
import { TelebirrReceipt, ReceiptData } from "./components/TelebirrReceipt";

const ANDROID_MODELS = [
  { value: "m1", label: "Samsung M1" },
  { value: "s22", label: "Samsung S22" },
] as const;

const IOS_MODELS = [
  { value: "xr", label: "iPhone XR" },
] as const;

/* ─── Premium Toggle Component ─── */
const PremiumToggle = ({ enabled, onClick, label }: { enabled: boolean; onClick: () => void; label: string }) => (
  <div className="flex flex-col items-center gap-1.5 flex-1">
    <span className="text-[10px] font-bold text-gray-400 uppercase tracking-wider">{label}</span>
    <button
      type="button"
      onClick={onClick}
      className={`relative w-[42px] h-[22px] rounded-full transition-all duration-300 ${enabled ? 'bg-[#8dc73f]' : 'bg-gray-200'}`}
    >
      <span className={`absolute top-[2px] left-[2px] w-[18px] h-[18px] bg-white rounded-full transition-transform duration-300 transform ${enabled ? 'translate-x-[20px]' : 'translate-x-0'}`} />
    </button>
  </div>
);

export function App() {
  const [data, setData] = useState<ReceiptData>({
    os: "android",
    phoneModel: "m1",
    time: "11:43",
    battery: "48",
    amount: "-2.00",
    transactionTime: "2026/02/20 11:42:49",
    transactionType: "Transfer Money",
    transactionTo: "MIKIYAS",
    transactionNumber: "DBK611YEXI",
    bannerIndex: 2,
    simCount: 2,
    connectivity: "both",
    silentMode: true,
    showLocation: true,
    showVolte: true,
  });

  const generateRandomTransactionNumber = () => {
    const prefixes = ["DB", "TX", "RE", "BA", "CZ", "MN", "AA", "KL", "WF"];
    const prefix = prefixes[Math.floor(Math.random() * prefixes.length)];
    const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    let suffix = "";
    for (let i = 0; i < 8; i++) {
      suffix += chars.charAt(Math.floor(Math.random() * chars.length));
    }
    setData({ ...data, transactionNumber: `${prefix}${suffix}` });
  };

  const handleOsChange = (newOs: "android" | "ios") => {
    const defaultModel = newOs === "android" ? "m1" : "xr";
    setData({
      ...data,
      os: newOs,
      phoneModel: defaultModel as "m1" | "s22" | "xr",
    });
  };

  const handleDownload = async () => {
    // IMPORTANT: Fix download to target ONLY the screen content, not the frame
    const screenElement = document.getElementById("receipt-screen");
    if (screenElement) {
      let pixelRatio = 3; // High quality default
      if (data.phoneModel === "s22") pixelRatio = 3;
      if (data.phoneModel === "m1") pixelRatio = 3; // Increased for M1
      if (data.phoneModel === "xr") pixelRatio = 2.5;

      try {
        const dataUrl = await toPng(screenElement, {
          quality: 1,
          pixelRatio: pixelRatio,
          cacheBust: true,
          backgroundColor: "#ffffff", // Ensure solid white background
          style: {
            transform: 'scale(1)',
          }
        });
        const link = document.createElement("a");
        link.download = `Telebirr_Receipt_${data.transactionNumber || new Date().getTime()}.png`;
        link.href = dataUrl;
        link.click();
      } catch (err) {
        console.error("Download failed:", err);
      }
    }
  };

  const models = data.os === "android" ? ANDROID_MODELS : IOS_MODELS;

  return (
    <div className="flex flex-col md:flex-row h-screen bg-gray-50 font-sans overflow-hidden">
      {/* Sidebar Editor */}
      <div className="w-full md:w-[420px] bg-white border-r border-gray-200 p-6 overflow-y-auto flex flex-col gap-6 z-30">
        <div>
          <h1 className="text-2xl font-black mb-1 text-gray-900 flex items-center gap-2">
            <span className="bg-[#8dc73f] text-white px-2 py-0.5 rounded">T</span> Telebirr Pro
          </h1>
          <p className="text-xs text-gray-400 font-medium">PIXEL-PERFECT TRANSACTION GENERATOR</p>
        </div>

        <div className="space-y-6">
          {/* Main Info Card */}
          <div className="bg-gray-50 p-4 rounded-xl space-y-4 border border-gray-100">
            <div>
              <label className="block text-[11px] font-bold text-gray-400 uppercase tracking-wider mb-2">Transfer Details</label>
              <div className="space-y-3">
                <div className="relative">
                   <span className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400 text-sm font-bold">ETB</span>
                   <input
                    type="text"
                    value={data.amount}
                    onChange={(e) => setData({ ...data, amount: e.target.value })}
                    placeholder="Amount"
                    className="w-full pl-12 pr-4 py-2 bg-white border border-gray-200 rounded-lg text-lg font-bold text-[#8dc73f] focus:ring-2 focus:ring-[#8dc73f] focus:outline-none transition-all"
                  />
                </div>
                <input
                  type="text"
                  value={data.transactionTo}
                  onChange={(e) => setData({ ...data, transactionTo: e.target.value })}
                  placeholder="Recipient Name"
                  className="w-full px-4 py-2 bg-white border border-gray-200 rounded-lg text-sm font-medium focus:ring-2 focus:ring-[#8dc73f] focus:outline-none"
                />
              </div>
            </div>
            
            <div className="grid grid-cols-2 gap-3">
              <div>
                <label className="block text-[10px] font-bold text-gray-400 mb-1">Time</label>
                <input
                  type="text"
                  value={data.time}
                  onChange={(e) => setData({ ...data, time: e.target.value })}
                  className="w-full p-2 bg-white border border-gray-200 rounded-lg text-sm font-bold"
                />
              </div>
              <div>
                <label className="block text-[10px] font-bold text-gray-400 mb-1">Battery</label>
                <div className="relative">
                  <input
                    type="text"
                    value={data.battery}
                    onChange={(e) => setData({ ...data, battery: e.target.value })}
                    className="w-full p-2 bg-white border border-gray-200 rounded-lg text-sm font-bold pr-6"
                  />
                  <span className="absolute right-2 top-1/2 -translate-y-1/2 text-xs font-bold text-gray-400">%</span>
                </div>
              </div>
            </div>
          </div>

          {/* Transaction Metadata */}
          <div className="space-y-3">
            <div>
              <label className="block text-[11px] font-bold text-gray-400 uppercase tracking-wider mb-1.5">Transaction Metadata</label>
              <input
                type="text"
                value={data.transactionTime}
                onChange={(e) => setData({ ...data, transactionTime: e.target.value })}
                className="w-full px-4 py-2 bg-gray-50 border border-gray-200 rounded-lg text-xs font-medium focus:outline-none"
              />
            </div>
            <div className="flex gap-2">
              <input
                type="text"
                value={data.transactionNumber}
                onChange={(e) => setData({ ...data, transactionNumber: e.target.value })}
                className="flex-1 px-4 py-2 bg-gray-50 border border-gray-200 rounded-lg text-xs font-mono font-bold uppercase"
              />
              <button
                onClick={generateRandomTransactionNumber}
                className="p-2 bg-gray-100 text-gray-600 rounded-lg hover:bg-gray-200 transition-colors"
              >
                <RefreshCcw size={18} />
              </button>
            </div>
          </div>

          {/* Device & Banner Selection */}
          <div className="grid grid-cols-2 gap-3">
            <div className="col-span-1">
              <label className="block text-[10px] font-bold text-gray-400 mb-1">Banner</label>
              <select
                value={data.bannerIndex}
                onChange={(e) => setData({ ...data, bannerIndex: parseInt(e.target.value) })}
                className="w-full px-3 py-2 bg-white border border-gray-200 rounded-lg text-sm font-medium focus:ring-2 focus:ring-[#8dc73f] focus:outline-none"
              >
                {[1, 2, 3, 4].map((i) => (
                  <option key={i} value={i}>Banner {i}</option>
                ))}
              </select>
            </div>
            <div className="col-span-1">
               <label className="block text-[10px] font-bold text-gray-400 mb-1">Model</label>
               <select
                 value={data.phoneModel}
                 onChange={(e) => setData({ ...data, phoneModel: e.target.value as any })}
                 className="w-full px-3 py-2 bg-white border border-gray-200 rounded-lg text-sm font-medium"
               >
                 {models.map((m) => (
                   <option key={m.value} value={m.value}>{m.label}</option>
                 ))}
               </select>
            </div>
          </div>

          <div className="flex gap-2">
            <button
               onClick={() => handleOsChange("android")}
               className={`flex-1 py-2 rounded-lg text-xs font-bold transition-all ${data.os === "android" ? "bg-black text-white" : "bg-gray-100 text-gray-500"}`}
            >
              ANDROID
            </button>
            <button
               onClick={() => handleOsChange("ios")}
               className={`flex-1 py-2 rounded-lg text-xs font-bold transition-all ${data.os === "ios" ? "bg-white border border-gray-200 text-black" : "bg-gray-100 text-gray-500"}`}
            >
              iOS
            </button>
          </div>

          {/* Status Bar Section */}
          <div className="bg-gray-50 p-4 rounded-xl border border-gray-200">
             <h2 className="text-[11px] font-black text-gray-900 uppercase tracking-widest mb-4 border-b border-gray-200 pb-2">Status Bar Customization</h2>
             
             <div className="space-y-5">
               <div className="grid grid-cols-3 gap-2">
                 <PremiumToggle label="Silent" enabled={data.silentMode} onClick={() => setData({...data, silentMode: !data.silentMode})} />
                 <PremiumToggle label="Location" enabled={data.showLocation} onClick={() => setData({...data, showLocation: !data.showLocation})} />
                 {data.os === "android" && (
                   <PremiumToggle label="VoLTE" enabled={data.showVolte} onClick={() => setData({...data, showVolte: !data.showVolte})} />
                 )}
               </div>

               <div className="space-y-3">
                 <div>
                   <label className="block text-[10px] font-bold text-gray-400 mb-1">Signal & Data</label>
                   <select
                     value={data.connectivity}
                     onChange={(e) => setData({ ...data, connectivity: e.target.value as any })}
                     className="w-full px-3 py-1.5 bg-white border border-gray-200 rounded-lg text-xs font-bold"
                   >
                     <option value="wifi">WiFi Only</option>
                     <option value="data">Data Only</option>
                     <option value="both">WiFi + Data</option>
                   </select>
                 </div>
                 {data.os === "android" && (
                   <div>
                     <label className="block text-[10px] font-bold text-gray-400 mb-1">Sim Cards</label>
                     <select
                       value={data.simCount}
                       onChange={(e) => setData({ ...data, simCount: parseInt(e.target.value) as any })}
                       className="w-full px-3 py-1.5 bg-white border border-gray-200 rounded-lg text-xs font-bold"
                     >
                       <option value={1}>Single Sim</option>
                       <option value={2}>Dual Sim</option>
                     </select>
                   </div>
                 )}
               </div>
             </div>
          </div>

          <button
            onClick={handleDownload}
            className="w-full group relative overflow-hidden flex justify-center items-center py-4 px-6 rounded-xl bg-[#8dc73f] hover:bg-[#7db137] text-white font-black text-lg transition-all"
          >
            <Download className="mr-2 h-6 w-6 group-hover:scale-110 transition-transform" />
            DOWNLOAD RECEIPT
             <div className="absolute inset-x-0 bottom-0 h-1 bg-white/20 transform scale-x-0 group-hover:scale-x-100 transition-transform" />
          </button>
        </div>
      </div>

      {/* Preview Area */}
      <div className="flex-1 bg-[#f0f2f5] flex items-center justify-center p-8 overflow-auto">
         <TelebirrReceipt data={data} isPreview={true} />
      </div>
    </div>
  );
}
