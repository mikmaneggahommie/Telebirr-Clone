import React from 'react';

export const StepSlider = ({
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

export const XYTweakSlider = ({
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

export const ValueTweakSlider = ({
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
