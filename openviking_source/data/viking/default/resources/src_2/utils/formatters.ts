export const clampNumber = (value: number, min: number, max: number) => Math.min(max, Math.max(min, value));

export const pad2 = (value: number) => String(value).padStart(2, "0");

export const sanitizeIntegerInput = (value: string, maxLength?: number) => {
  const digits = value.replace(/\D/g, "");
  return typeof maxLength === "number" ? digits.slice(0, maxLength) : digits;
};

export const sanitizeDecimalInput = (
  value: string,
  { allowNegative = false, maxDecimals = 2 }: { allowNegative?: boolean; maxDecimals?: number } = {},
) => {
  const negative = allowNegative && value.trim().startsWith("-");
  const raw = value.replace(/[^\d.]/g, "");
  let out = "";
  let seenDot = false;
  for (const ch of raw) {
    if (ch === ".") {
      if (!seenDot && maxDecimals > 0) {
        seenDot = true;
        out += ".";
      }
      continue;
    }
    out += ch;
  }
  if (seenDot) {
    const [intPart, decPart = ""] = out.split(".");
    out = `${intPart}.${decPart.slice(0, maxDecimals)}`;
  }
  if (negative) return out ? `-${out}` : "-";
  return out;
};

export type ParsedTime = {
  hour: number;
  minute: number;
  meridiem?: "AM" | "PM";
  valid: boolean;
};

export const softFormatTimeInput = (value: string) => {
  const cleaned = value.replace(/[^0-9:]/g, "");
  if (cleaned.includes(":")) {
    const [hourRaw = "", minuteRaw = ""] = cleaned.split(":");
    const hourDigits = hourRaw.replace(/\D/g, "").slice(0, 2);
    const minuteDigits = minuteRaw.replace(/\D/g, "").slice(0, 2);
    const hourText = hourDigits.length === 2 && hourDigits.startsWith("0") ? hourDigits.slice(1) : hourDigits;
    return `${hourText}:${minuteDigits}`;
  }
  const digits = cleaned.replace(/\D/g, "").slice(0, 4);
  if (digits.length <= 2) {
    return digits.length === 2 && digits.startsWith("0") ? digits.slice(1) : digits;
  }
  if (digits.length === 3) {
    return `${digits.slice(0, 1)}:${digits.slice(1)}`;
  }
  const hourRaw = digits.slice(0, 2);
  const minuteRaw = digits.slice(2, 4);
  const hourText = hourRaw.startsWith("0") ? hourRaw.slice(1) : hourRaw;
  return `${hourText}:${minuteRaw}`;
};

export const softFormatDateTimeInput = (value: string) => {
  const cleaned = value.replace(/[^0-9/: ]/g, "");
  if (/[/: ]/.test(cleaned)) {
    return cleaned;
  }
  const digits = cleaned.replace(/\D/g, "").slice(0, 14);
  const y = digits.slice(0, 4);
  const m = digits.slice(4, 6);
  const d = digits.slice(6, 8);
  const h = digits.slice(8, 10);
  const min = digits.slice(10, 12);
  const s = digits.slice(12, 14);
  let out = y;
  if (m) out += `/${m}`;
  if (d) out += `/${d}`;
  if (h) out += ` ${h}`;
  if (min) out += `:${min}`;
  if (s) out += `:${s}`;
  return out;
};

export const parseTimeInput = (raw: string): ParsedTime => {
  const trimmed = raw.trim();
  if (!trimmed) return { hour: 0, minute: 0, valid: false };
  const meridiemMatch = trimmed.match(/\b(AM|PM)\b/i);
  const meridiem = meridiemMatch ? (meridiemMatch[1].toUpperCase() as "AM" | "PM") : undefined;
  const cleaned = trimmed.replace(/\s*(am|pm)\s*/ig, "").trim();
  if (cleaned.includes(":")) {
    const [hourRaw = "", minuteRaw = ""] = cleaned.split(":");
    if (!hourRaw || !minuteRaw) return { hour: 0, minute: 0, meridiem, valid: false };
    const hour = Number.parseInt(hourRaw, 10);
    const minute = Number.parseInt(minuteRaw.slice(0, 2), 10);
    if (Number.isNaN(hour) || Number.isNaN(minute)) return { hour: 0, minute: 0, meridiem, valid: false };
    return { hour, minute, meridiem, valid: true };
  }
  const digits = cleaned.replace(/\D/g, "");
  if (digits.length === 1 || digits.length === 2) {
    const hour = Number.parseInt(digits, 10);
    if (Number.isNaN(hour)) return { hour: 0, minute: 0, meridiem, valid: false };
    return { hour, minute: 0, meridiem, valid: true };
  }
  if (digits.length < 3) return { hour: 0, minute: 0, meridiem, valid: false };
  const hourRaw = digits.length === 3 ? digits.slice(0, 1) : digits.slice(0, 2);
  const minuteRaw = digits.length === 3 ? digits.slice(1, 3) : digits.slice(2, 4);
  const hour = Number.parseInt(hourRaw, 10);
  const minute = Number.parseInt(minuteRaw, 10);
  if (Number.isNaN(hour) || Number.isNaN(minute)) return { hour: 0, minute: 0, meridiem, valid: false };
  return { hour, minute, meridiem, valid: true };
};

export type NormalizedTime =
  | { valid: false; error: string }
  | { valid: true; hour24: number; minute: number; meridiem: "AM" | "PM" };

export const normalizeTime = (
  raw: string,
  use12HourFormat: boolean,
  fallbackMeridiem: "AM" | "PM",
): NormalizedTime => {
  const parsed = parseTimeInput(raw);
  if (!parsed.valid) {
    return { valid: false, error: "Enter time as HH:MM" };
  }
  let hour = parsed.hour;
  const minute = clampNumber(parsed.minute, 0, 59);
  let meridiem = parsed.meridiem ?? fallbackMeridiem;
  if (use12HourFormat) {
    if (hour === 0) hour = 12;
    hour = clampNumber(hour, 1, 12);
    if (meridiem !== "AM" && meridiem !== "PM") {
      meridiem = fallbackMeridiem;
    }
    const hour24 = meridiem === "PM" ? (hour % 12) + 12 : hour % 12;
    return { valid: true, hour24, minute, meridiem };
  }
  hour = clampNumber(hour, 0, 23);
  meridiem = hour >= 12 ? "PM" : "AM";
  return { valid: true, hour24: hour, minute, meridiem };
};

export const formatDisplayTime = (
  value: { hour24: number; minute: number },
  use12HourFormat: boolean,
) => {
  if (use12HourFormat) {
    const hour12 = value.hour24 % 12 || 12;
    const meridiem = value.hour24 >= 12 ? "PM" : "AM";
    return { display: `${String(hour12)}:${pad2(value.minute)}`, meridiem };
  }
  const hourText = String(value.hour24);
  const meridiem = value.hour24 >= 12 ? "PM" : "AM";
  return { display: `${hourText}:${pad2(value.minute)}`, meridiem };
};

export const formatDateTimeInput = (value: string) => {
  const digits = sanitizeIntegerInput(value, 14);
  const y = digits.slice(0, 4);
  const m = digits.slice(4, 6);
  const d = digits.slice(6, 8);
  const h = digits.slice(8, 10);
  const min = digits.slice(10, 12);
  const s = digits.slice(12, 14);
  let out = y;
  if (m) out += `/${m}`;
  if (d) out += `/${d}`;
  if (h) out += ` ${h}`;
  if (min) out += `:${min}`;
  if (s) out += `:${s}`;
  return out;
};

export const normalizeDateTimeInput = (value: string) => {
  const digits = sanitizeIntegerInput(value, 14);
  if (digits.length < 14) {
    return { value: formatDateTimeInput(value), error: "Use YYYY/MM/DD HH:MM:SS" };
  }
  const year = Number.parseInt(digits.slice(0, 4), 10);
  let month = Number.parseInt(digits.slice(4, 6), 10);
  let day = Number.parseInt(digits.slice(6, 8), 10);
  let hour = Number.parseInt(digits.slice(8, 10), 10);
  let minute = Number.parseInt(digits.slice(10, 12), 10);
  let second = Number.parseInt(digits.slice(12, 14), 10);
  if ([year, month, day, hour, minute, second].some((v) => Number.isNaN(v))) {
    return { value: formatDateTimeInput(value), error: "Use YYYY/MM/DD HH:MM:SS" };
  }
  month = clampNumber(month, 1, 12);
  const maxDay = new Date(year, month, 0).getDate();
  day = clampNumber(day, 1, maxDay);
  hour = clampNumber(hour, 0, 23);
  minute = clampNumber(minute, 0, 59);
  second = clampNumber(second, 0, 59);
  const normalized = `${year}/${pad2(month)}/${pad2(day)} ${pad2(hour)}:${pad2(minute)}:${pad2(second)}`;
  return { value: normalized, error: undefined as string | undefined };
};

export const normalizeBatteryInput = (value: string) => {
  const digits = sanitizeIntegerInput(value, 3);
  if (!digits) {
    return { value: "", error: "Enter 0-100" };
  }
  const num = clampNumber(Number.parseInt(digits, 10), 0, 100);
  return { value: String(num), error: undefined as string | undefined };
};

export const normalizeAmountInput = (value: string) => {
  const sanitized = sanitizeDecimalInput(value, { allowNegative: true, maxDecimals: 2 });
  if (!sanitized || sanitized === "-" || sanitized === ".") {
    return { value: sanitized, error: "Enter a valid amount" };
  }
  const num = Number(sanitized);
  if (Number.isNaN(num)) {
    return { value: sanitized, error: "Enter a valid amount" };
  }
  return { value: num.toFixed(2), error: undefined as string | undefined };
};

export const sanitizeTransactionId = (value: string) => value.toUpperCase().replace(/[^A-Z0-9]/g, "").slice(0, 20);

export const generateInitialTransactionID = () => {
  const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
  let suffix = "";
  for (let i = 0; i < 9; i++) suffix += chars.charAt(Math.floor(Math.random() * chars.length));
  return `D${suffix}`;
};
