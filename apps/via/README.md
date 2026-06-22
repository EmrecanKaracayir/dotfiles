# VIA

This folder contains VIA layout saves for programmable keyboards.

## Files

- `rainy_75.layout.json`: Current Rainy 75 VIA layout save.

## Current Role

VIA is the primary place for Rainy 75 keyboard-side changes. The saved layout contains the base keymap, layer keys, edit/navigation layer behavior, media controls, function keys, and other firmware-level mappings.

## Layout Notes

- Command and Option are arranged for macOS at the firmware level.
- Caps Lock activates the edit layer directly on the keyboard. This replaces the edit layer that used to live in Kanata.
- The top-right key now activates the control layer. It used to be `Home`.
- Delete sends `F13`.
- End sends `F14`.
- Page Up sends `F15`.
- Page Down sends `F16`.

## Control Layer

The control layer contains keyboard and system controls:

- Left and right handle volume down/up.
- Up and down handle brightness up/down.
- Enter sends play/pause.
- `+` and `-` send next and previous track.
- `Esc` sleeps the keyboard.
- `Space` shows battery level.
- `WASD` controls RGB.
- `Tab` switches source.

## Edit Layer

Caps Lock holds the edit layer. It keeps editing and navigation keys under the left hand and home row:

| Key | Output    |
|:----|:----------|
| `R` | Page Up   |
| `F` | Page Down |
| `U` | Home      |
| `I` | Up        |
| `O` | End       |
| `H` | Backspace |
| `J` | Left      |
| `K` | Down      |
| `L` | Right     |
| `[` | Escape    |
| `;` | Enter     |

## Relationship To Hammerspoon

Hammerspoon handles the remaining macOS userspace behavior that cannot live cleanly in VIA. The keyboard sends app-facing keys such as `F14`, `F15`, and `F16`; Hammerspoon maps those to close/quit/lock, minimize/hide/desktop, and zoom/fill/fullscreen shortcuts.

Kanata is deprecated for now.

## Restore

Open VIA, select the Rainy 75, and load `rainy_75.layout.json` from the save or load layout flow. After changing the keyboard layout in VIA, export a fresh save back to this file.
