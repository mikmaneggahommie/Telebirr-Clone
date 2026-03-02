# Receipt Layout System

## Canonical model
- Reference canvas: `360x780` CSS px.
- Content area uses safe-area subtraction:
  - Android status bar: `32`
  - iOS status bar: `48`
  - Nav by mode: `buttons=48`, `gestures=24`, `home_indicator=24`, `hidden=0`
- Section geometry is computed in `src/components/layout/receiptLayout.ts`.

## Section control
The following sections are computed by anchors and tokenized metrics:
- `topActions`
- `successBadge`
- `successText`
- `amountBlock`
- `divider`
- `tableBlock`
- `qrRow`
- `banner`
- `dots`
- `finishedButton`

## Fine tuning API
Use `ReceiptData.layoutTweaks`:

```ts
layoutTweaks?: {
  qr?: { x?: number; y?: number };
  banner?: { x?: number; y?: number };
  dots?: { x?: number; y?: number };
  finishedButton?: { x?: number; y?: number };
}
```

Rules:
- Positive `y` moves down, negative moves up.
- Positive `x` moves right, negative moves left.
- Tweaks are clamped to `[-40, 40]`.
- Tweaks are transform-only, so they do not reflow sibling sections.

## Visual validation matrix
Capture screenshots for these presets:
- `test_accuracy`
- `samsung`
- `generic_android`
- `iphone_modern`
- `iphone_classic`

And at least these banner states:
- slot `2` (empty)
- slot `3` (Zemen)

Check:
1. Section order is stable (changing dots tweak does not move banner/button base layout).
2. No overlap with notch/dynamic island/home indicator.
3. Relative spacing remains consistent across device presets.
4. Export PNG geometry matches preview geometry.
