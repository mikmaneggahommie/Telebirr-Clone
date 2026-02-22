import { cn } from "../utils/cn";
import { Download } from "lucide-react";

export interface ReceiptData {
  os: "android" | "ios";
  phoneModel: "m1" | "s22" | "xr";
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
  <svg width="10" height="9" viewBox="0 0 16 14" fill="none">
    <rect
      x="0"
      y="10"
      width="2.2"
      height="4"
      rx="0.3"
      fill={filled >= 1 ? color : "#d1d1d1"}
      opacity={filled >= 1 ? 1 : 0.6}
    />
    <rect
      x="4.4"
      y="7"
      width="2.2"
      height="7"
      rx="0.3"
      fill={filled >= 2 ? color : "#d1d1d1"}
      opacity={filled >= 2 ? 1 : 0.6}
    />
    <rect
      x="8.8"
      y="4"
      width="2.2"
      height="10"
      rx="0.3"
      fill={filled >= 3 ? color : "#d1d1d1"}
      opacity={filled >= 3 ? 1 : 0.6}
    />
    <rect
      x="13.2"
      y="0"
      width="2.2"
      height="14"
      rx="0.3"
      fill={filled >= 4 ? color : "#d1d1d1"}
      opacity={filled >= 4 ? 1 : 0.6}
    />
  </svg>
);

// Samsung One UI WiFi Icon (Finer arcs)
const SamsungWifiIcon = ({ color = "#000000" }: { color?: string }) => (
  <svg width="12" height="9" viewBox="0 0 16 12" fill="none">
    <path
      d="M8 12C9.10457 12 10 11.1046 10 10C10 8.89543 9.10457 8 8 8C6.89543 8 6 8.89543 6 10C6 11.1046 6.89543 12 8 12Z"
      fill={color}
    />
    <path
      d="M12.5 7.5C11.2 6.2 9.7 5.5 8 5.5C6.3 5.5 4.8 6.2 3.5 7.5"
      stroke={color}
      strokeWidth="1.2"
      strokeLinecap="round"
    />
    <path
      d="M15 5C13.2 3.2 11 2.25 8 2.25C5 2.25 2.8 3.2 1 5"
      stroke={color}
      strokeWidth="1.2"
      strokeLinecap="round"
    />
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
  <svg width="14" height="8" viewBox="0 0 25 14" fill="none">
    <rect
      x="0.8"
      y="0.8"
      width="21"
      height="12.4"
      rx="2"
      stroke={color}
      strokeWidth="1.2"
    />
    <rect
      x="2.5"
      y="2.5"
      width={(percent / 100) * 17.5}
      height="9"
      rx="1"
      fill={color}
    />
    <path
      d="M23 4.5V9.5"
      stroke={color}
      strokeWidth="1.2"
      strokeLinecap="round"
    />
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
        <div
          key={i}
          className="flex items-center justify-center w-[7px] h-[7px]"
        >
          {isActive ? (
            <svg width="7" height="7" viewBox="0 0 7 7">
              {/* Ring color synced to #8dc73f */}
              <circle
                cx="3.5"
                cy="3.5"
                r="3.1"
                stroke="#8dc73f"
                strokeWidth="0.8"
                fill="white"
              />
              {/* Core at #8dc73f */}
              <circle cx="3.5" cy="3.5" r="1.6" fill="#8dc73f" />
            </svg>
          ) : (
            <svg width="7" height="7" viewBox="0 0 7 7">
              {/* Inactive Ring — #8dc73f */}
              <circle
                cx="3.5"
                cy="3.5"
                r="3.1"
                stroke="#8dc73f"
                strokeWidth="0.8"
                fill="none"
              />
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
  const getDimensions = () => {
    switch (data.phoneModel) {
      case "m1":
        return { width: "360px", height: "780px" };
      case "xr":
        return { width: "414px", height: "896px" };
      case "s22":
        return { width: "360px", height: "780px" };
      default:
        return { width: "360px", height: "780px" };
    }
  };

  const { width, height } = getDimensions();
  const batteryNum = parseInt(data.battery) || 48;

  const ScreenContent = (
    <div
      id="receipt-screen"
      className="bg-white overflow-hidden relative flex flex-col font-sans select-none"
      style={{
        width,
        height,
        fontFamily:
          "'Roboto', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif",
      }}
    >
      {/* status Bar — Absolute Top at 18.5px (37px scaled) */}
      {data.os === "android" && (
        <div className="h-[32px] w-full flex items-center justify-between px-[14px] shrink-0 z-10 bg-white absolute top-0 left-0 right-0 overflow-hidden">
          {/* Clock — Center Y at 23.785px (47.57px PS) */}
          <div
            className={cn(
              "text-[12.5px] font-[500] text-black tracking-tight leading-none shrink-0 absolute top-[23.785px] -translate-y-1/2",
              data.phoneModel === "m1" ? "left-[50px]" : "left-[18px]",
            )}
          >
            {data.time}
          </div>
          {/* Status Icons — Center Y aligned with clock */}
          <div className="flex items-center gap-[4.5px] shrink-0 absolute top-[23.785px] -translate-y-1/2 right-[14px]">
            {data.silentMode && (
              <svg
                width="10.5"
                height="10.5"
                viewBox="0 0 24 24"
                fill="none"
                stroke="black"
                strokeWidth="2"
                strokeLinecap="round"
                strokeLinejoin="round"
              >
                <path d="M13.73 21a2 2 0 0 1-3.46 0" />
                <path d="M18.63 13A17.89 17.89 0 0 1 18 8" />
                <path d="M6.26 6.26A5.86 5.86 0 0 0 6 8c0 8-3 9-3 9h14" />
                <path d="M18 8a6 6 0 0 0-9.33-5" />
                <line x1="1" y1="1" x2="23" y2="23" />
              </svg>
            )}
            {data.showLocation && (
              <svg width="9" height="9" viewBox="0 0 24 24" fill="black">
                <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z" />
              </svg>
            )}
            {(data.connectivity === "wifi" || data.connectivity === "both") && (
              <SamsungWifiIcon color="black" />
            )}
            {data.showVolte && (
              <div className="flex items-baseline scale-[0.8] origin-right mr-[-1px]">
                <span className="text-[9px] font-bold text-black tracking-tighter">
                  Vo))
                </span>
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
              <span className="text-[11px] font-[500] text-black tracking-tighter">
                {data.battery}%
              </span>
              <SamsungBattery percent={batteryNum} color="black" />
            </div>
          </div>
        </div>
      )}

      {data.os === "ios" && (
        <div className="h-[48px] w-full flex items-end justify-between px-[22px] pb-[8px] shrink-0 font-bold z-10 bg-white absolute top-0 left-0 right-0">
          <div className="text-[15px] text-black tracking-tight">
            {data.time}
          </div>
          <div className="flex items-center gap-[5.5px]">
            <svg width="17" height="11" viewBox="0 0 20 14" fill="black">
              <rect x="0" y="11" width="3.5" height="3" rx="0.5" />
              <rect x="5.5" y="8" width="3.5" height="6" rx="0.5" />
              <rect x="11" y="4.5" width="3.5" height="9.5" rx="0.5" />
              <rect x="16.5" y="0" width="3.5" height="14" rx="0.5" />
            </svg>
            <svg
              width="17"
              height="11"
              viewBox="0 0 20 16"
              fill="none"
              stroke="black"
              strokeWidth="2.2"
            >
              <path d="M1 5C5 0.5 15 0.5 19 5" strokeLinecap="round" />
              <path d="M4.5 8.5C7 6 13 6 15.5 8.5" strokeLinecap="round" />
              <circle cx="10" cy="15.5" r="1.2" fill="black" stroke="none" />
            </svg>
            <div className="w-[24px] h-[11px] border-[1.5px] border-black/30 rounded-[3px] p-[1px] relative">
              <div
                className="h-full bg-black rounded-[1px]"
                style={{ width: `${data.battery}%` }}
              />
              <div className="absolute right-[-3.5px] top-[2px] w-[2px] h-[4px] bg-black/30 rounded-r-[1px]" />
            </div>
          </div>
        </div>
      )}

      {/* Content Area — Absolute Positioning based on Photoshop Coordinates (720x1560 -> 360x780) */}
      <div className="absolute inset-0 w-full h-full pointer-events-none">
        {/* Top Header Actions (Download/Share) — Middle-ground Weight (400) and Icons (1.6), Nudged text down (1px) */}
        <div className="absolute top-[76px] left-0 right-0 flex justify-between items-center px-[12px] -translate-y-1/2">
          <div className="flex items-center gap-[5px] text-[#8dc73f] w-[130px]">
            <Download size={16} strokeWidth={1.6} />
            <span className="text-[13.5px] font-[400] tracking-tight leading-none translate-y-[1px]">
              Download
            </span>
          </div>
          <div className="flex items-center gap-[5px] text-[#8dc73f] w-[100px] justify-end">
            <svg
              width="16"
              height="16"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              strokeWidth="1.6"
              strokeLinecap="round"
              strokeLinejoin="round"
            >
              <circle cx="18" cy="5" r="3" />
              <circle cx="6" cy="12" r="3" />
              <circle cx="18" cy="19" r="3" />
              <line x1="8.59" y1="13.51" x2="15.42" y2="17.49" />
              <line x1="15.41" y1="6.51" x2="8.59" y2="10.49" />
            </svg>
            <span className="text-[13.5px] font-[400] tracking-tight leading-none translate-y-[1px]">
              Share
            </span>
          </div>
        </div>

        {/* Success Circle — Nudged down to 117.5px (Original calibrated center) */}
        <div className="absolute top-[117.5px] left-1/2 -translate-x-1/2 -translate-y-1/2 flex flex-col items-center">
          <div className="w-[44px] h-[44px] aspect-square flex-none bg-[#8dc73f] rounded-full flex items-center justify-center">
            <svg
              width="28"
              height="28"
              viewBox="0 0 24 24"
              fill="none"
              stroke="white"
              strokeWidth="3"
              strokeLinecap="round"
              strokeLinejoin="round"
            >
              <polyline points="20 6 9 17 4 12" />
            </svg>
          </div>
        </div>

        {/* Success Text — Lightened to 450 */}
        <div className="absolute top-[155.5px] left-1/2 -translate-x-1/2 -translate-y-1/2 flex flex-col items-center">
          <span className="text-[#8dc73f] text-[13.5px] font-[450] tracking-tight leading-none h-[13.5px] flex items-center">
            Successful
          </span>
        </div>

        {/* Amount Section — Center Y at 259.15px (518.30px PS) */}
        <div className="absolute top-[259.15px] left-0 right-0 flex items-center justify-center -translate-y-1/2">
          <div className="flex items-baseline gap-[4px] h-[31.5px]">
            {/* Amount Number — Intermediate 450 */}
            <span className="text-[31.5px] font-[450] text-[#222] tracking-tighter leading-none">
              -
              {data.amount
                .toString()
                .replace(/[^0-9.]/g, "")
                .split(".")[0] || "0"}
              .00
            </span>
            {/* ETB Text — Nudged up to -1px offset, Intermediate 450 */}
            <span className="text-[11px] font-[450] text-[#222] ml-[2px] leading-none -translate-y-[1px]">
              (ETB)
            </span>
          </div>
        </div>

        {/* Top Divider (Table Start) — Y: 317.5px (635 PS) */}
        <div className="absolute top-[317.5px] left-1/2 -translate-x-1/2 w-[307px] h-[0.5px] bg-[#e6e6e6] opacity-60" />

        {/* Transaction Table Rows (Ultra Precise Rev 50 - Exact Blueprint from User) */}
        {/* Exact User Y-Coordinates (Scale 0.5x): 665.5, 722.5, 779.5, 836.5 */}
        {/* Natural Typography & Flex Alignment (Left/Right Anchor) */}

        {/* Row 1 (Time) — Y: 323.5px (4px upward adjustment to counter HTML line-height padding) */}
        <div
          className="absolute top-[323.5px] left-0 right-0 px-[26.5px] flex justify-between items-baseline font-sans"
          style={{ fontFamily: "system-ui, -apple-system, sans-serif" }}
        >
          <span
            className="text-[#808080] text-[11px] font-[600] tracking-[-0.2px] whitespace-nowrap"
            style={{ WebkitTextStroke: "0.1px currentColor" }}
          >
            Transaction Time:
          </span>
          <span
            className="text-[#111] text-[11.5px] font-[600] tracking-[-0.1px] whitespace-nowrap text-right"
            style={{ WebkitTextStroke: "0.1px currentColor" }}
          >
            {data.transactionTime}
          </span>
        </div>

        {/* Row 2 (Type) — Y: 352px */}
        <div
          className="absolute top-[352px] left-0 right-0 px-[26.5px] flex justify-between items-baseline font-sans"
          style={{ fontFamily: "system-ui, -apple-system, sans-serif" }}
        >
          <span
            className="text-[#808080] text-[11px] font-[600] tracking-[-0.2px] whitespace-nowrap"
            style={{ WebkitTextStroke: "0.1px currentColor" }}
          >
            Transaction Type:
          </span>
          <span
            className="text-[#111] text-[11.5px] font-[600] tracking-[-0.1px] whitespace-nowrap text-right"
            style={{ WebkitTextStroke: "0.1px currentColor" }}
          >
            {data.transactionType}
          </span>
        </div>

        {/* Row 3 (To) — Y: 380.5px */}
        <div
          className="absolute top-[380.5px] left-0 right-0 px-[26.5px] flex justify-between items-baseline font-sans"
          style={{ fontFamily: "system-ui, -apple-system, sans-serif" }}
        >
          <span
            className="text-[#808080] text-[11px] font-[600] tracking-[-0.2px] whitespace-nowrap"
            style={{ WebkitTextStroke: "0.1px currentColor" }}
          >
            Transaction To:
          </span>
          <span
            className="text-[#111] text-[11.5px] font-[600] tracking-[-0.1px] whitespace-nowrap text-right"
            style={{ WebkitTextStroke: "0.1px currentColor" }}
          >
            {data.transactionTo}
          </span>
        </div>

        {/* Row 4 (Number) — Y: 409px */}
        <div
          className="absolute top-[409px] left-0 right-0 px-[26.5px] flex justify-between items-baseline font-sans"
          style={{ fontFamily: "system-ui, -apple-system, sans-serif" }}
        >
          <span
            className="text-[#808080] text-[11px] font-[600] tracking-[-0.2px] whitespace-nowrap"
            style={{ WebkitTextStroke: "0.1px currentColor" }}
          >
            Transaction Number:
          </span>
          <span
            className="text-[#111] text-[11.5px] font-[600] tracking-[-0.1px] whitespace-nowrap text-right"
            style={{ WebkitTextStroke: "0.1px currentColor" }}
          >
            {data.transactionNumber}
          </span>
        </div>
        {/* QR Row — Photoshop-Calibrated Specs (Icon tighter to text) */}
        <div className="absolute right-[28.5px] top-[449px] -translate-y-1/2 flex items-center justify-end text-[#8dc73f]">
          <div className="flex items-center whitespace-nowrap">
            {/* Authentic User-Provided QR Icon - Tighter spacing */}
            <img 
              src="/Asset/qr code icon.svg" 
              alt="QR Code Icon" 
              className="w-[24px] h-[28px] shrink-0"
              style={{ marginRight: '2px' }}
            />
            {/* Lighter Weight Authentic Text - Smaller for contrast */}
            <span className="text-[14.2px] font-[600] tracking-[-0.3px] leading-none shrink-0" style={{ marginRight: '7px' }}>
              QR Code
            </span>
            {/* Authentic SVG Chevron Arrow - Taller with light stroke */}
            <div className="flex items-center justify-center shrink-0" style={{ width: '14px' }}>
              <svg width="14" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.4" strokeLinecap="round" strokeLinejoin="round">
                <polyline points="9 20 15 12 9 4" />
              </svg>
            </div>
          </div>
        </div>

        {/* Banner Carousel — Y: 477.5px TOP (955 PS) */}
        {/* Banner W: 343.5px (687 PS) | X: 9px (18 PS) */}
        <div className="absolute top-[477.5px] left-[9px] w-[343.5px] h-[103px] rounded-[13px] overflow-hidden bg-[#f9faf8] border border-[#f0f3ec]">
          <img
            src={`/Banners/Banner ${data.bannerIndex}.png`}
            alt="Banner"
            className="w-full h-full object-cover"
          />
        </div>

        {/* Dots — Y: 597px Center */}
        <div className="absolute top-[597px] left-1/2 -translate-x-1/2 -translate-y-1/2">
          <CarouselDots active={Math.max(0, data.bannerIndex - 1)} total={5} />
        </div>

        {/* Finished Button — Y: 673.5px TOP (1347 PS) */}
        <div className="absolute top-[673.5px] left-[93px] w-[160.5px] h-[35px]">
          <button className="w-full h-full bg-[#8dc73f] text-white rounded-[8px] text-[13px] font-[600] tracking-wide flex items-center justify-center">
            Finished
          </button>
        </div>
      </div>

      {/* FIXED FOOTER — Navigation Bar (Android) / Home Indicator (iOS) */}
      <div className="shrink-0 bg-white">
        {data.os === "android" && (
          <div className="absolute top-[738px] left-0 right-0 h-[48px] bg-black flex items-center justify-around px-8 border-t border-white/5">
            {/* Recents */}
            <svg
              width="20"
              height="20"
              viewBox="0 0 24 24"
              fill="none"
              stroke="white"
              strokeWidth="1.2"
              strokeLinecap="round"
              opacity="0.8"
            >
              <path d="M7 6v12M12 6v12M17 6v12" />
            </svg>
            {/* Home */}
            <div className="w-[18px] h-[18px] border-[1.2px] border-white/80 rounded-[4px] opacity-80" />
            {/* Back */}
            <svg
              width="20"
              height="20"
              viewBox="0 0 24 24"
              fill="none"
              stroke="white"
              strokeWidth="1.2"
              strokeLinecap="round"
              opacity="0.8"
            >
              <path d="M15 18l-6-6 6-6" />
            </svg>
          </div>
        )}

        {data.os === "ios" && (
          <div className="h-[24px] w-full flex justify-center py-[10px] bg-white">
            <div className="w-[130px] h-[5px] bg-black/10 rounded-full" />
          </div>
        )}
      </div>
    </div>
  );

  if (!isPreview) return ScreenContent;

  /* ─── Preview Wrapper with Phone Frame ─── */
  return (
    <div className="relative w-full h-full bg-gray-100 flex items-center justify-center overflow-auto p-12">
      <div
        className="flex items-center justify-center origin-center transition-transform duration-300"
        style={{
          transform: `scale(${data.os === "ios" ? 0.75 : 0.8})`, // Slightly more scale down to ensure no clipping
          width: width,
          height: height,
        }}
      >
        <div
          className={cn(
            "relative bg-black transition-all shrink-0",
            data.os === "ios"
              ? "rounded-[55px] p-[12px]"
              : "rounded-[28px] p-[10px]",
          )}
          style={{
            width: `calc(${width} + ${data.os === "ios" ? "24px" : "20px"})`,
            height: `calc(${height} + ${data.os === "ios" ? "24px" : "20px"})`,
          }}
        >
          {/* Screen with Mockup Overlay elements (Not in download) */}
          <div
            className={cn(
              "bg-white h-full w-full overflow-hidden relative",
              data.os === "ios" ? "rounded-[45px]" : "rounded-[18px]",
            )}
          >
            {/* Samsung M1 Punch-hole (External overlay, NOT in download Id) */}
            {data.os === "android" && data.phoneModel === "m1" && (
              <div className="absolute top-[8px] left-[18px] w-[18.5px] h-[18.5px] bg-black rounded-full z-40 pointer-events-none" />
            )}

            {/* iOS Notch (External overlay, NOT in download Id) */}
            {data.os === "ios" && (
              <div className="absolute top-0 left-1/2 -translate-x-1/2 w-[114px] h-[32px] bg-black rounded-b-[18px] z-40 pointer-events-none" />
            )}

            {ScreenContent}
          </div>

          {/* Buttons / Camera features */}
          {data.os === "ios" && (
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
