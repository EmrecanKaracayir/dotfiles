# VIA

This folder contains VIA layout saves for programmable keyboards.

## Files

- `rainy_75.layout.json`: Current Rainy 75 VIA layout save.

## Role

VIA is the primary place for Rainy 75 keyboard-side changes. The saved layout contains the base keymap, layer keys, edit/navigation layer behavior, media controls, function keys, and other firmware-level mappings.

## Layout Notes

- Command and Option are arranged for macOS at the firmware level.
- Caps Lock activates the edit layer directly on the keyboard.
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
- `Esc` toggles RGB on and off.
- `Space` shows battery level.
- `Tab` switches source.

RGB controls sit in two clusters, one under each hand:

| Key | Output             |
|:----|:-------------------|
| `W` | Brightness up      |
| `S` | Brightness down    |
| `A` | Hue down           |
| `D` | Hue up             |
| `Q` | Saturation down    |
| `E` | Saturation up      |
| `I` | Next effect        |
| `K` | Previous effect    |
| `J` | Effect speed down  |
| `L` | Effect speed up    |

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

## Relationship To Kanata And Hammerspoon

Kanata handles the remaining macOS behavior that cannot live cleanly in VIA. The keyboard sends app-facing keys such as `F14`, `F15`, and `F16`; Kanata maps those to close/quit/lock, minimize/hide/desktop, and zoom/fill/fullscreen shortcuts.

On Macs where Kanata can't run, Hammerspoon does the same job.

## Restore

Open VIA, select the Rainy 75, and load `rainy_75.layout.json` from the save or load layout flow. After changing the keyboard layout in VIA, export a fresh save back to this file.
