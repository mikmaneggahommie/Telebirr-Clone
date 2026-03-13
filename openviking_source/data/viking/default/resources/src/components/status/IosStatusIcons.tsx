import React from "react";

export type IosStatusIconKey =
  | "airplane"
  | "alarm"
  | "cellularbars"
  | "wifi"
  | "battery.0percent"
  | "battery.25percent"
  | "battery.50percent"
  | "battery.75percent"
  | "battery.100percent"
  | "battery.100percent.bolt"
  | "personalhotspot"
  | "location.north.fill"
  | "moon.fill"
  | "lock.rotation"
  | "network";

export const IOS_STATUS_ICON_MAP: Record<IosStatusIconKey, string> = {
  "airplane": "/ios-status/airplane.svg",
  "alarm": "/ios-status/alarm.svg",
  "cellularbars": "/ios-status/cellularbars.svg",
  "wifi": "/ios-status/wifi.svg",
  "battery.0percent": "/ios-status/battery.0percent.svg",
  "battery.25percent": "/ios-status/battery.25percent.svg",
  "battery.50percent": "/ios-status/battery.50percent.svg",
  "battery.75percent": "/ios-status/battery.75percent.svg",
  "battery.100percent": "/ios-status/battery.100percent.svg",
  "battery.100percent.bolt": "/ios-status/battery.100percent.bolt.svg",
  "personalhotspot": "/ios-status/personalhotspot.svg",
  "location.north.fill": "/ios-status/location.north.fill.svg",
  "moon.fill": "/ios-status/moon.fill.svg",
  "lock.rotation": "/ios-status/lock.rotation.svg",
  "network": "/ios-status/network.svg",
};

const symbolMaskStyle = (
  symbol: IosStatusIconKey,
  width: number,
  height: number,
  color = "#000",
  opacity = 1,
): React.CSSProperties => ({
  width: `${width}px`,
  height: `${height}px`,
  display: "inline-block",
  backgroundColor: color,
  opacity,
  WebkitMaskImage: `url(${IOS_STATUS_ICON_MAP[symbol]})`,
  WebkitMaskRepeat: "no-repeat",
  WebkitMaskPosition: "center",
  WebkitMaskSize: "contain",
  maskImage: `url(${IOS_STATUS_ICON_MAP[symbol]})`,
  maskRepeat: "no-repeat",
  maskPosition: "center",
  maskSize: "contain",
});

const IosSymbolMaskIcon = ({
  symbol,
  width,
  height,
  color = "#000",
  opacity = 1,
}: {
  symbol: IosStatusIconKey;
  width: number;
  height: number;
  color?: string;
  opacity?: number;
}) => (
  <span aria-hidden="true" style={symbolMaskStyle(symbol, width, height, color, opacity)} />
);

const signalOpacity = (filled: number) => {
  if (filled <= 0) return 0.25;
  if (filled === 1) return 0.48;
  if (filled === 2) return 0.7;
  if (filled === 3) return 0.88;
  return 1;
};

export const IosSignalBars = ({ filled = 4 }: { filled?: number }) => (
  <IosSymbolMaskIcon
    symbol="cellularbars"
    width={17}
    height={12}
    opacity={signalOpacity(Math.max(0, Math.min(4, filled)))}
  />
);

export const IosDualSignalBars = ({
  primary = 4,
  secondary = 4,
}: {
  primary?: number;
  secondary?: number;
}) => (
  <span
    aria-hidden="true"
    style={{ width: "17px", height: "12px", display: "inline-flex", flexDirection: "column", gap: "0px", justifyContent: "center" }}
  >
    <span style={{ transform: "scale(0.58)", transformOrigin: "left center", lineHeight: 0 }}>
      <IosSignalBars filled={primary} />
    </span>
    <span style={{ transform: "scale(0.58)", transformOrigin: "left center", lineHeight: 0 }}>
      <IosSignalBars filled={secondary} />
    </span>
  </span>
);

export const IosWifiIcon = ({ strength = 3 }: { strength?: number }) => {
  const clamped = Math.max(0, Math.min(3, strength));
  const opacity = clamped <= 0 ? 0.25 : clamped === 1 ? 0.55 : clamped === 2 ? 0.8 : 1;
  return <IosSymbolMaskIcon symbol="wifi" width={16} height={13} opacity={opacity} />;
};

const batterySymbolForPercent = (percent: number): IosStatusIconKey => {
  if (percent >= 88) return "battery.100percent";
  if (percent >= 63) return "battery.75percent";
  if (percent >= 38) return "battery.50percent";
  if (percent >= 13) return "battery.25percent";
  return "battery.0percent";
};

export const IosBattery = ({ percent, charging = false }: { percent: number; charging?: boolean }) => {
  const clamped = Math.max(0, Math.min(100, percent));
  const symbol = charging ? "battery.100percent.bolt" : batterySymbolForPercent(clamped);
  const color = !charging && clamped <= 20 ? "#ff3b30" : "#000";
  return <IosSymbolMaskIcon symbol={symbol} width={27} height={13} color={color} />;
};

export const IosAirplane = () => <IosSymbolMaskIcon symbol="airplane" width={13} height={13} />;

export const IosAlarm = () => <IosSymbolMaskIcon symbol="alarm" width={13} height={13} />;

export const IosLocationArrow = ({ mode = "solid" }: { mode?: "off" | "solid" | "hollow" | "recent" }) => {
  if (mode === "off") return null;
  const opacity = mode === "hollow" ? 0.35 : mode === "recent" ? 0.55 : 1;
  return <IosSymbolMaskIcon symbol="location.north.fill" width={9} height={9} opacity={opacity} />;
};

export const IosHotspot = () => <IosSymbolMaskIcon symbol="personalhotspot" width={11} height={11} />;

export const IosDataLabel = ({ type = "5G" }: { type?: string }) => (
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

export const IosVpnIcon = () => (
  <div
    style={{
      border: "1px solid #000",
      borderRadius: "2px",
      padding: "0 2px",
      height: "11px",
      display: "flex",
      alignItems: "center",
      justifyContent: "center",
      lineHeight: 1,
      fontSize: "7px",
      fontWeight: 700,
      letterSpacing: "-0.1px",
      color: "#000",
      fontFamily: '-apple-system, "SF Pro Text", "Helvetica Neue", sans-serif',
    }}
  >
    VPN
  </div>
);

export const IosFocusMoon = () => <IosSymbolMaskIcon symbol="moon.fill" width={10} height={10} />;

export const IosRotationLock = () => <IosSymbolMaskIcon symbol="lock.rotation" width={12} height={12} />;

export const IosNetworkSpinner = () => <IosSymbolMaskIcon symbol="network" width={11} height={11} opacity={0.8} />;

// SF Symbols 7.2 doesn't expose a dedicated bluetooth logo symbol.
// Keep this glyph as a fallback until Apple publishes one in the symbol set.
export const IosBluetooth = () => (
  <svg
    width="10"
    height="14"
    viewBox="0 0 12 16"
    fill="none"
    stroke="#000"
    strokeWidth="1.75"
    strokeLinecap="round"
    strokeLinejoin="round"
    aria-label="Bluetooth"
  >
    <path d="M6 1.2V14.8" />
    <path d="M6 8L2.4 4.9" />
    <path d="M6 8L2.4 11.1" />
    <path d="M6 8L9.6 4.6L6 1.6" />
    <path d="M6 8L9.6 11.4L6 14.4" />
  </svg>
);
