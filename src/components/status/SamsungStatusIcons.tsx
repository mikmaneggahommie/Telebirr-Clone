import React, { useEffect, useState } from "react";
import { getProcessedSamsungBadge } from "../../utils/samsungBadgeExtract";

export const SAMSUNG_FONT_STACK =
  '"One UI Sans","SamsungOne","Samsung One","SamsungSharpSans",Roboto,sans-serif';

export type SamsungIconColorMode = "auto" | "dark" | "light";

export const SAMSUNG_NETWORK_TYPE_ICON_FILES = [
  "3g.jpg",
  "4g.jpg",
  "5g.jpg",
  "hspa_plus.jpg",
  "lte.jpg",
] as const;

export const SAMSUNG_SIGNAL_ICON_FILES = [
  "signal_strength.jpg",
  "no_signal.jpg",
] as const;

export const SAMSUNG_WIFI_ICON_FILES = [
  "wifi.jpg",
] as const;

export const SAMSUNG_BATTERY_ICON_FILES = [
  "battery_level.jpg",
  "battery_charging.jpg",
] as const;

export const SAMSUNG_SYSTEM_TOGGLE_ICON_FILES = [
  "vpn-service-connected.jpeg",
  "power-saving-icon1.png",
  "alarm.jpg",
  "vibrate-icon1.png",
  "mute.jpg",
  "location.jpg",
  "mobile-hotspot-enabled.jpeg",
  "bluetooth.jpg",
  "casting-activated.jpeg",
  "airplane_mode.jpg",
] as const;

export type SamsungNetworkTypeIconFile = (typeof SAMSUNG_NETWORK_TYPE_ICON_FILES)[number];
export type SamsungSignalIconFile = (typeof SAMSUNG_SIGNAL_ICON_FILES)[number];
export type SamsungWifiIconFile = (typeof SAMSUNG_WIFI_ICON_FILES)[number];
export type SamsungBatteryIconFile = (typeof SAMSUNG_BATTERY_ICON_FILES)[number];
export type SamsungSystemToggleIconFile = (typeof SAMSUNG_SYSTEM_TOGGLE_ICON_FILES)[number];

export type SamsungStatusIconFile =
  | SamsungNetworkTypeIconFile
  | SamsungSignalIconFile
  | SamsungWifiIconFile
  | SamsungBatteryIconFile
  | SamsungSystemToggleIconFile;

export const SAMSUNG_STATUS_ICON_CATEGORIES = {
  networkType: SAMSUNG_NETWORK_TYPE_ICON_FILES,
  signal: SAMSUNG_SIGNAL_ICON_FILES,
  wifi: SAMSUNG_WIFI_ICON_FILES,
  battery: SAMSUNG_BATTERY_ICON_FILES,
  system: SAMSUNG_SYSTEM_TOGGLE_ICON_FILES,
} as const;

export const SAMSUNG_ALL_STATUS_ICONS: readonly SamsungStatusIconFile[] = [
  ...SAMSUNG_NETWORK_TYPE_ICON_FILES,
  ...SAMSUNG_SIGNAL_ICON_FILES,
  ...SAMSUNG_WIFI_ICON_FILES,
  ...SAMSUNG_BATTERY_ICON_FILES,
  ...SAMSUNG_SYSTEM_TOGGLE_ICON_FILES,
];

export const SAMSUNG_STATUS_ICON_LABELS: Record<SamsungStatusIconFile, string> = {
  "3g.jpg": "3G",
  "4g.jpg": "4G",
  "5g.jpg": "5G",
  "hspa_plus.jpg": "H+",
  "lte.jpg": "LTE",
  "signal_strength.jpg": "Signal",
  "no_signal.jpg": "No Signal",
  "wifi.jpg": "Wi-Fi",
  "battery_level.jpg": "Battery",
  "battery_charging.jpg": "Charging",
  "airplane_mode.jpg": "Airplane",
  "alarm.jpg": "Alarm",
  "bluetooth.jpg": "Bluetooth",
  "casting-activated.jpeg": "Cast",
  "location.jpg": "Location",
  "mobile-hotspot-enabled.jpeg": "Hotspot",
  "mute.jpg": "Mute",
  "vpn-service-connected.jpeg": "VPN",
  "power-saving-icon1.png": "Power Saving",
  "vibrate-icon1.png": "Vibrate",
};

const STATUS_DARK = "#1C1C1E";
const STATUS_LIGHT = "#FFFFFF";

const parseRgb = (value: string): [number, number, number] | null => {
  const trimmed = value.trim();
  const hex = trimmed.replace(/^#/, "");
  if (hex.length === 3) {
    return [
      parseInt(hex[0] + hex[0], 16),
      parseInt(hex[1] + hex[1], 16),
      parseInt(hex[2] + hex[2], 16),
    ];
  }
  if (hex.length === 6) {
    return [
      parseInt(hex.slice(0, 2), 16),
      parseInt(hex.slice(2, 4), 16),
      parseInt(hex.slice(4, 6), 16),
    ];
  }
  const rgbMatch = trimmed.match(
    /^rgba?\(\s*(\d{1,3})[\s,]+(\d{1,3})[\s,]+(\d{1,3})(?:[\s,/]+[\d.]+)?\s*\)$/i,
  );
  if (!rgbMatch) return null;
  return [
    Math.max(0, Math.min(255, Number(rgbMatch[1]))),
    Math.max(0, Math.min(255, Number(rgbMatch[2]))),
    Math.max(0, Math.min(255, Number(rgbMatch[3]))),
  ];
};

const colorLuminance = (color: string) => {
  const parsed = parseRgb(color);
  if (!parsed) return 255;
  const [r, g, b] = parsed;
  return (0.2126 * r) + (0.7152 * g) + (0.0722 * b);
};

export const resolveSamsungStatusColor = (
  mode: SamsungIconColorMode,
  backgroundColor = "#FFFFFF",
) => {
  if (mode === "dark") return STATUS_DARK;
  if (mode === "light") return STATUS_LIGHT;
  return colorLuminance(backgroundColor) < 140 ? STATUS_LIGHT : STATUS_DARK;
};

export const SamsungStatusText = ({
  children,
  color,
  fontSize,
  fontWeight = 600,
  letterSpacing = "-0.2px",
  style,
}: {
  children: React.ReactNode;
  color: string;
  fontSize: string;
  fontWeight?: number;
  letterSpacing?: string;
  style?: React.CSSProperties;
}) => (
  <span
    style={{
      color,
      fontFamily: SAMSUNG_FONT_STACK,
      fontWeight,
      fontSize,
      lineHeight: 1,
      letterSpacing,
      fontVariantNumeric: "tabular-nums",
      display: "inline-block",
      ...style,
    }}
  >
    {children}
  </span>
);

const SAMSUNG_STATUS_ICON_BASE = "/status/samsung/";

export const SamsungFolderIcon = ({
  file,
  color,
  width,
  height,
  style,
  alt = "",
}: {
  file: SamsungStatusIconFile;
  color: string;
  width: number;
  height: number;
  style?: React.CSSProperties;
  alt?: string;
}) => {
  const [processedSrc, setProcessedSrc] = useState<string | null>(null);

  useEffect(() => {
    let active = true;
    setProcessedSrc(null);
    getProcessedSamsungBadge(file, color)
      .then((src) => {
        if (active) setProcessedSrc(src);
      })
      .catch(() => {
        if (active) setProcessedSrc(`${SAMSUNG_STATUS_ICON_BASE}${file}`);
      });

    return () => {
      active = false;
    };
  }, [file, color]);

  if (!processedSrc) {
    return (
      <span
        aria-hidden="true"
        style={{
          display: "inline-block",
          width: `${width}px`,
          height: `${height}px`,
          flexShrink: 0,
          ...style,
        }}
      />
    );
  }

  return (
    <img
      src={processedSrc}
      alt={alt}
      style={{
        display: "block",
        width: `${width}px`,
        height: `${height}px`,
        objectFit: "contain",
        flexShrink: 0,
        ...style,
      }}
    />
  );
};
