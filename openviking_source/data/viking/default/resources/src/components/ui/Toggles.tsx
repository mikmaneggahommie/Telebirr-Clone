import React from 'react';

export const PremiumToggle = ({ enabled, onClick, label }: { enabled: boolean; onClick: () => void; label: string }) => (
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

export const InlineToggle = ({
  enabled,
  onClick,
  label,
  labelOffset = "",
}: {
  enabled: boolean;
  onClick: () => void;
  label: string;
  labelOffset?: string;
}) => (
  <div className="grid grid-cols-[1fr_auto] items-center gap-3 w-full">
    <span className={`text-left text-[10px] font-bold text-gray-400 uppercase tracking-wider leading-tight ${labelOffset}`}>{label}</span>
    <button
      type="button"
      onClick={onClick}
      className={`relative w-[42px] h-[22px] rounded-full transition-all duration-300 ${enabled ? 'bg-[#8dc73f]' : 'bg-gray-200'}`}
    >
      <span className={`absolute top-[2px] left-[2px] w-[18px] h-[18px] bg-white rounded-full transition-transform duration-300 transform ${enabled ? 'translate-x-[20px]' : 'translate-x-0'}`} />
    </button>
  </div>
);
