import type { CSSProperties } from "react";

export const SAMSUNG_STATUS_COLORS = {
  active: "#1C1C1E",
  tint: "rgba(0, 0, 0, 0.35)",
  low: "#FF4444",
} as const;

export const SAMSUNG_FONT_STACK = '"SamsungOne", "SamsungSharpSans", Roboto, sans-serif';

const ICON = {
  airplane: "/icons/airplane.svg",
  alarm: "/icons/alarm.svg",
  batteryShell: "/icons/battery-shell.svg",
  batteryBolt: "/icons/battery-bolt.svg",
  bluetooth: "/icons/bluetooth.svg",
  cast: "/icons/cast.svg",
  dataArrows: "/icons/data-arrows.svg",
  dataSaver: "/icons/data-saver.svg",
  dnd: "/icons/dnd.svg",
  hotspot: "/icons/hotspot.svg",
  location: "/icons/location.svg",
  nfc: "/icons/nfc.svg",
  powerSave: "/icons/power-save.svg",
  rotationLock: "/icons/rotation-lock.svg",
  silent: "/icons/silent.svg",
  vpn: "/icons/vpn.svg",
  signal: {
    0: "/icons/signal-0.svg",
    1: "/icons/signal-1.svg",
    2: "/icons/signal-2.svg",
    3: "/icons/signal-3.svg",
    4: "/icons/signal-4.svg",
  },
  wifi: {
    0: "/icons/wifi-0.svg",
    1: "/icons/wifi-1.svg",
    2: "/icons/wifi-2.svg",
    3: "/icons/wifi-3.svg",
  },
} as const;

const maskStyle = (src: string, width: number, height: number, color: string): CSSProperties => ({
  display: "inline-block",
  width: `${width}px`,
  height: `${height}px`,
  backgroundColor: color,
  WebkitMaskImage: `url(${src})`,
  maskImage: `url(${src})`,
  WebkitMaskRepeat: "no-repeat",
  maskRepeat: "no-repeat",
  WebkitMaskPosition: "center",
  maskPosition: "center",
  WebkitMaskSize: "contain",
  maskSize: "contain",
});

const MonoMaskIcon = ({
  src,
  width,
  height,
  color = SAMSUNG_STATUS_COLORS.active,
}: {
  src: string;
  width: number;
  height: number;
  color?: string;
}) => <span aria-hidden="true" style={maskStyle(src, width, height, color)} />;

export const SamsungSignalIcon = ({ level = 4 }: { level?: number }) => {
  const clamped = Math.max(0, Math.min(4, level));
  const src = ICON.signal[clamped as 0 | 1 | 2 | 3 | 4];
  return <MonoMaskIcon src={src} width={18} height={18} />;
};

export const SamsungWifiIcon = ({ strength = 3 }: { strength?: number }) => {
  const clamped = Math.max(0, Math.min(3, strength));
  const src = ICON.wifi[clamped as 0 | 1 | 2 | 3];
  return <MonoMaskIcon src={src} width={16} height={14} />;
};

export const SamsungDataArrowsIcon = () => <MonoMaskIcon src={ICON.dataArrows} width={6} height={10} />;

export const SamsungBatteryIcon = ({
  percent,
  charging = false,
}: {
  percent: number;
  charging?: boolean;
}) => {
  const pct = Math.max(0, Math.min(100, percent));
  const isLow = pct <= 20;
  const shellColor = isLow ? SAMSUNG_STATUS_COLORS.low : SAMSUNG_STATUS_COLORS.tint;
  const fillColor = isLow ? SAMSUNG_STATUS_COLORS.low : SAMSUNG_STATUS_COLORS.active;

  const width = 12;
  const height = 22;
  const innerTop = 5;
  const innerBottom = 3;
  const innerLeft = 3;
  const innerWidth = 6;
  const trackHeight = height - innerTop - innerBottom;
  const fillHeight = Math.max(0.8, (trackHeight * pct) / 100);
  const fillTop = innerTop + (trackHeight - fillHeight);

  return (
    <span style={{ position: "relative", display: "inline-block", width: `${width}px`, height: `${height}px` }}>
      <span aria-hidden="true" style={maskStyle(ICON.batteryShell, width, height, shellColor)} />
      <span
        aria-hidden="true"
        style={{
          position: "absolute",
          left: `${innerLeft}px`,
          top: `${fillTop}px`,
          width: `${innerWidth}px`,
          height: `${fillHeight}px`,
          borderRadius: "1px",
          backgroundColor: fillColor,
        }}
      />
      {charging && (
        <span
          aria-hidden="true"
          style={{
            ...maskStyle(ICON.batteryBolt, 6.5, 9.5, "#ffffff"),
            position: "absolute",
            left: "50%",
            top: "50%",
            transform: "translate(-50%, -50%)",
          }}
        />
      )}
    </span>
  );
};

export const SamsungAirplaneIcon = () => <MonoMaskIcon src={ICON.airplane} width={13} height={13} />;
export const SamsungBluetoothIcon = () => <MonoMaskIcon src={ICON.bluetooth} width={10} height={11} />;
export const SamsungAlarmIcon = () => <MonoMaskIcon src={ICON.alarm} width={12} height={12} />;
export const SamsungSilentIcon = () => <MonoMaskIcon src={ICON.silent} width={12} height={12} />;
export const SamsungLocationIcon = () => <MonoMaskIcon src={ICON.location} width={11} height={11} />;
export const SamsungNfcIcon = () => <MonoMaskIcon src={ICON.nfc} width={10} height={10} />;
export const SamsungHotspotIcon = () => <MonoMaskIcon src={ICON.hotspot} width={12} height={12} />;

export const SamsungNetworkLabel = ({ label }: { label: string }) => (
  <span
    style={{
      color: SAMSUNG_STATUS_COLORS.active,
      fontFamily: SAMSUNG_FONT_STACK,
      fontWeight: 700,
      fontSize: "12px",
      lineHeight: 1,
      letterSpacing: "0.02em",
      display: "inline-block",
    }}
  >
    {label}
  </span>
);

export const SamsungVolteLabel = () => (
  <span
    style={{
      fontFamily: SAMSUNG_FONT_STACK,
      color: SAMSUNG_STATUS_COLORS.active,
      fontWeight: 700,
      fontSize: "9px",
      lineHeight: 1,
      letterSpacing: "-0.2px",
      display: "inline-block",
    }}
  >
    VoLTE
  </span>
);
