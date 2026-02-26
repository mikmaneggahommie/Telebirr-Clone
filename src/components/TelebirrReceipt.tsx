import { cn } from "../utils/cn";
import { Download } from "lucide-react";

export const devicePresets = {
  test_accuracy: { os: "android", notch: "punch_left", font: "font-roboto", nav: "buttons" },
  iphone_modern: { os: "ios", notch: "dynamic_island", font: "font-sans", nav: "home_indicator" },
  iphone_classic: { os: "ios", notch: "notch", font: "font-sans", nav: "home_indicator" },
  samsung: { os: "android", notch: "punch_center", font: "font-roboto", nav: "buttons" },
  pixel: { os: "android", notch: "punch_center", font: "font-sans", nav: "gestures" },
  generic_android: { os: "android", notch: "punch_left", font: "font-sans", nav: "buttons" }
} as const;

export type PresetKey = keyof typeof devicePresets;

export interface OmitTestPreset {}

export interface ReceiptData {
  preset: PresetKey;
  cameraHoleOverride: "default" | "left" | "center" | "none";
  navBarOverride: "default" | "gestures" | "buttons" | "hidden";
  time: string;
  battery: string;
  amount: string;
  transactionTime: string;
  transactionType: string;
  transactionTo: string;
  transactionNumber: string;
  bannerIndex: number;
  simCount: 1 | 2;
  connectivity: "wifi" | "data" | "both";
  silentMode: boolean;
  showLocation: boolean;
  showVolte: boolean;
}

// Samsung One UI Signal Bars (Finer weight)
const SamsungSignalBars = ({
  filled = 4,
  color = "#000000",
}: {
  filled?: number;
  color?: string;
}) => (
  <svg width="11" height="10" viewBox="0 0 16 14" fill="none">
    <rect x="0" y="10" width="2.2" height="4" rx="0.3" fill={filled >= 1 ? color : "#d1d1d1"} opacity={filled >= 1 ? 1 : 0.6} />
    <rect x="4.4" y="7" width="2.2" height="7" rx="0.3" fill={filled >= 2 ? color : "#d1d1d1"} opacity={filled >= 2 ? 1 : 0.6} />
    <rect x="8.8" y="4" width="2.2" height="10" rx="0.3" fill={filled >= 3 ? color : "#d1d1d1"} opacity={filled >= 3 ? 1 : 0.6} />
    <rect x="13.2" y="0" width="2.2" height="14" rx="0.3" fill={filled >= 4 ? color : "#d1d1d1"} opacity={filled >= 4 ? 1 : 0.6} />
  </svg>
);

// Samsung One UI WiFi Icon (Finer arcs)
const SamsungWifiIcon = ({ color = "#000000" }: { color?: string }) => (
  <svg width="13.5" height="10" viewBox="0 0 16 12" fill="none">
    <path d="M8 12C9.10457 12 10 11.1046 10 10C10 8.89543 9.10457 8 8 8C6.89543 8 6 8.89543 6 10C6 11.1046 6.89543 12 8 12Z" fill={color} />
    <path d="M12.5 7.5C11.2 6.2 9.7 5.5 8 5.5C6.3 5.5 4.8 6.2 3.5 7.5" stroke={color} strokeWidth="1.2" strokeLinecap="round" />
    <path d="M15 5C13.2 3.2 11 2.25 8 2.25C5 2.25 2.8 3.2 1 5" stroke={color} strokeWidth="1.2" strokeLinecap="round" />
  </svg>
);

// Samsung One UI Battery (Finer)
const SamsungBattery = ({
  percent,
  color = "#000000",
}: {
  percent: number;
  color?: string;
}) => (
  <svg width="15.5" height="9" viewBox="0 0 25 14" fill="none">
    <rect x="0.8" y="0.8" width="21" height="12.4" rx="2" stroke={color} strokeWidth="1.2" />
    <rect x="2.5" y="2.5" width={(percent / 100) * 17.5} height="9" rx="1" fill={color} />
    <path d="M23 4.5V9.5" stroke={color} strokeWidth="1.2" strokeLinecap="round" />
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
              <circle cx="3.5" cy="3.5" r="1.6" fill="#8dc73f" />
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
  const config = devicePresets[data.preset] || devicePresets.iphone_modern;
  const os = config.os;
  
  const notchType = data.cameraHoleOverride === "default" 
    ? config.notch 
    : (data.cameraHoleOverride === "left" ? "punch_left" 
        : data.cameraHoleOverride === "center" ? "punch_center" 
        : "none");
        
  const navType = data.navBarOverride === "default" 
    ? config.nav 
    : data.navBarOverride;

  const getDimensions = () => {
    if (os === "ios") return { width: "375px", height: "812px" };
    return { width: "360px", height: "780px" }; // Standard 780px maps to 1560px at 2.0x scale
  };

  const { width, height } = getDimensions();
  const batteryNum = parseInt(data.battery) || 48;

  const ScreenContent = (
    <div
      id="receipt-screen"
      className={cn(
        "bg-white w-full h-full relative flex flex-col select-none", 
        config.font === "font-roboto" ? "font-['Roboto',sans-serif]" : "font-sans"
      )}
    >
      {/* status Bar */}
      {os === "android" && (
        <div className="h-[32px] w-full flex items-center justify-between px-[14px] pt-[16px] shrink-0 z-10 bg-white">
          <div className={cn(
            "text-[13.5px] font-[450] leading-none shrink-0",
            notchType === "punch_left" ? "ml-[36.5px]" : "ml-[4px]"
          )}
          style={{ color: '#3a3a3a', letterSpacing: '0.8px', fontFamily: 'Roboto, sans-serif' }}
          >
            {data.time}
          </div>
          <div className="flex items-center gap-[4.5px] shrink-0">
            {data.silentMode && (
              <svg width="11.5" height="11.5" viewBox="0 0 24 24" fill="none" stroke="black" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                <path d="M13.73 21a2 2 0 0 1-3.46 0" />
                <path d="M18.63 13A17.89 17.89 0 0 1 18 8" />
                <path d="M6.26 6.26A5.86 5.86 0 0 0 6 8c0 8-3 9-3 9h14" />
                <path d="M18 8a6 6 0 0 0-9.33-5" />
                <line x1="1" y1="1" x2="23" y2="23" />
              </svg>
            )}
            {data.showLocation && (
              <svg width="10" height="10" viewBox="0 0 24 24" fill="black">
                <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z" />
              </svg>
            )}
            {(data.connectivity === "wifi" || data.connectivity === "both") && (
              <SamsungWifiIcon color="black" />
            )}
            {data.showVolte && (
              <div className="flex items-baseline scale-[0.8] origin-right mr-[-1px]">
                <span className="text-[9px] font-bold text-black tracking-tighter">Vo))</span>
                <div className="flex flex-col text-black -space-y-[2px] ml-[0.5px]">
                  <span className="text-[6px]">▲</span>
                  <span className="text-[6px]">▼</span>
                </div>
              </div>
            )}
            <SamsungSignalBars filled={4} color="black" />
            {data.simCount === 2 && (
              <SamsungSignalBars filled={3} color="black" />
            )}
            <div className="flex items-center gap-[2.5px]">
              <span className="text-[11.5px] font-[400] text-black tracking-tighter">{data.battery}%</span>
              <SamsungBattery percent={batteryNum} color="black" />
            </div>
          </div>
        </div>
      )}

      {os === "ios" && (
        <div className={cn("h-[48px] w-full flex items-end justify-between px-[22px] pb-[8px] shrink-0 font-bold z-10 bg-white",
          notchType === "dynamic_island" ? "pt-[12px]" : "")}>
          <div className="text-[16.5px] font-[300] tracking-wide" style={{ color: '#3a3a3a' }}>{data.time}</div>
          <div className="flex items-center gap-[5.5px]">
            <svg width="17" height="11" viewBox="0 0 20 14" fill="black">
              <rect x="0" y="11" width="3.5" height="3" rx="0.5" />
              <rect x="5.5" y="8" width="3.5" height="6" rx="0.5" />
              <rect x="11" y="4.5" width="3.5" height="9.5" rx="0.5" />
              <rect x="16.5" y="0" width="3.5" height="14" rx="0.5" />
            </svg>
            <svg width="17" height="11" viewBox="0 0 20 16" fill="none" stroke="black" strokeWidth="2.2">
              <path d="M1 5C5 0.5 15 0.5 19 5" strokeLinecap="round" />
              <path d="M4.5 8.5C7 6 13 6 15.5 8.5" strokeLinecap="round" />
              <circle cx="10" cy="15.5" r="1.2" fill="black" stroke="none" />
            </svg>
            <div className="w-[24px] h-[11px] border-[1.5px] border-black/30 rounded-[3px] p-[1px] relative">
              <div className="h-full bg-black rounded-[1px]" style={{ width: `${data.battery}%` }} />
              <div className="absolute right-[-3.5px] top-[2px] w-[2px] h-[4px] bg-black/30 rounded-r-[1px]" />
            </div>
          </div>
        </div>
      )}

      <div className="flex-1 w-full h-full flex flex-col relative overflow-hidden pointer-events-none">
        
        {/* Top Header Actions */}
        <div className="w-full flex justify-between items-center px-[9px] pt-[37.5px]">
          <div className="flex items-center gap-1.5 text-[#8dc73f]">
            <Download size={16} strokeWidth={1.6} />
            <span className="text-[13.5px] font-[400] tracking-tight leading-none mt-0.5">Download</span>
          </div>
          <div className="flex items-center gap-1.5 text-[#8dc73f]">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.6" strokeLinecap="round" strokeLinejoin="round">
              <circle cx="18" cy="5" r="3" />
              <circle cx="6" cy="12" r="3" />
              <circle cx="18" cy="19" r="3" />
              <line x1="8.59" y1="13.51" x2="15.42" y2="17.49" />
              <line x1="15.41" y1="6.51" x2="8.59" y2="10.49" />
            </svg>
            <span className="text-[13.5px] font-[400] tracking-tight leading-none mt-0.5">Share</span>
          </div>
        </div>

        {/* Success Circle  */}
        <div className="w-full flex flex-col items-center justify-center mt-[10px]">
          <div className="w-[44px] h-[44px] aspect-square flex-none bg-[#8dc73f] rounded-full flex items-center justify-center">
            <svg width="35" height="26" viewBox="0 0 24 24" fill="none" stroke="white" strokeWidth="2.5" strokeLinecap="round" strokeLinejoin="round">
              <polyline points="20 6 9 17 4 12" />
            </svg>
          </div>
        </div>

        {/* Success Text */}
        <div className="w-full flex flex-col items-center justify-center mt-[9px] translate-x-[2px]">
          <span className="text-[#8dc73f] text-[13.5px] font-[410] tracking-[0.02px] leading-none">Successful</span>
        </div>

        {/* Amount */}
        <div className="w-full flex items-baseline justify-center gap-1 mt-[80px] -translate-x-[1px] mb-8">
          <span className="text-[31.5px] font-[405] text-[#222] tracking-tighter leading-none">
            -{data.amount.toString().replace(/[^0-9.]/g, "").split(".")[0] || "0"}.00
          </span>
          <span className="text-[11px] font-[405] text-[#222] leading-none translate-x-[3px] -translate-y-[1.5px]">
            (ETB)
          </span>
        </div>

        {/* Divider */}
        <div className="px-6 w-full flex justify-center mb-4">
          <div className="w-[307px] max-w-full h-[0.5px] bg-[#e6e6e6] opacity-60" />
        </div>

        {/* Transaction Table Rows (Fluid Flexbox) */}
        <div className="w-full px-6 flex flex-col gap-4 font-sans" style={{ fontFamily: "system-ui, -apple-system, sans-serif" }}>
          
          <div className="w-full flex justify-between items-center">
            <span className="text-[#808080] text-[11px] font-[600] tracking-[-0.2px] whitespace-nowrap" style={{ WebkitTextStroke: "0.1px currentColor" }}>Transaction Time:</span>
            <span className="text-[#111] text-[11.5px] font-[500] tracking-[-0.1px] whitespace-nowrap text-right">{data.transactionTime}</span>
          </div>

          <div className="w-full flex justify-between items-center">
            <span className="text-[#808080] text-[11px] font-[600] tracking-[-0.2px] whitespace-nowrap" style={{ WebkitTextStroke: "0.1px currentColor" }}>Transaction Type:</span>
            <span className="text-[#111] text-[11.5px] font-[500] tracking-[-0.1px] whitespace-nowrap text-right">{data.transactionType}</span>
          </div>

          <div className="w-full flex justify-between items-center">
            <span className="text-[#808080] text-[11px] font-[600] tracking-[-0.2px] whitespace-nowrap" style={{ WebkitTextStroke: "0.1px currentColor" }}>Transaction To:</span>
            <span className="text-[#111] text-[11.5px] font-[500] tracking-[-0.1px] whitespace-nowrap text-right">{data.transactionTo}</span>
          </div>

          <div className="w-full flex justify-between items-center">
            <span className="text-[#808080] text-[11px] font-[600] tracking-[-0.2px] whitespace-nowrap" style={{ WebkitTextStroke: "0.1px currentColor" }}>Transaction Number:</span>
            <span className="text-[#111] text-[11.5px] font-[500] tracking-[-0.1px] whitespace-nowrap text-right">{data.transactionNumber}</span>
          </div>
          
        </div>

        {/* QR Row */}
        <div className="w-full px-6 flex justify-end items-center mt-3 text-[#8dc73f]">
          <div className="flex items-center whitespace-nowrap gap-[2px]">
            <img src="/Asset/qr code icon.svg" alt="QR Code Icon" className="w-[24px] h-[28px] shrink-0" />
            <span className="text-[14.2px] font-[600] tracking-[-0.3px] leading-none shrink-0" style={{ marginRight: '5px' }}>QR Code</span>
            <div className="flex items-center justify-center shrink-0 w-[14px]">
              <svg width="14" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.4" strokeLinecap="round" strokeLinejoin="round">
                <polyline points="9 20 15 12 9 4" />
              </svg>
            </div>
          </div>
        </div>

        {/* Banner Carousel - 20px gap corresponds to 40px in standard 2x scaling */}
        <div className="w-full px-2 flex justify-center mt-[20px]">
          <div className="w-full max-w-[343.5px] h-[103px] rounded-[13px] overflow-hidden bg-[#f9faf8] border border-[#f0f3ec] shrink-0">
            <img src={`/Banners/Banner ${data.bannerIndex}.png`} alt="Banner" className="w-full h-full object-cover" />
          </div>
        </div>

        {/* Dots */}
        <div className="w-full flex justify-center mt-3 shrink-0">
          <CarouselDots active={Math.max(0, data.bannerIndex - 1)} total={5} />
        </div>

        {/* Finished Button */}
        <div className="w-full flex justify-center mt-6 mb-12 shrink-0">
          <div className="w-[160px] h-[35px] bg-[#8dc73f] text-white rounded-[8px] text-[13px] font-[600] tracking-wide flex items-center justify-center">
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
  return (
    <div className="relative w-full h-full bg-gray-100 flex items-center justify-center overflow-auto p-12">
      <div
        className="flex items-center justify-center origin-center transition-transform duration-300"
        style={{
          transform: `scale(${os === "ios" ? 0.75 : 0.8})`,
          width: width,
          height: height,
        }}
      >
        <div
          className={cn(
            "relative bg-black transition-all shrink-0",
            os === "ios" ? "rounded-[55px] p-[12px]" : "rounded-[28px] p-[10px]"
          )}
          style={{
            width: `calc(${width} + ${os === "ios" ? "24px" : "20px"})`,
            height: `calc(${height} + ${os === "ios" ? "24px" : "20px"})`,
          }}
        >
          <div
            className={cn(
              "bg-white h-full w-full overflow-hidden relative",
              os === "ios" ? "rounded-[45px]" : "rounded-[18px]"
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

          {os === "ios" && (
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
