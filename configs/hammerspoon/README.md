# Hammerspoon Configs

This folder contains the fallback macOS keyboard automation, used on Macs where Kanata can't run. Kanata needs a system extension and `sudo`, which managed company Macs may block. Hammerspoon runs in userspace through Accessibility permissions, so it works there.

## Main Paths

Hammerspoon config in this repo is organized as:

- `~/.config/hammerspoon/init.lua`

## Keyboard Mappings

Most Rainy 75 behavior is handled in VIA. Hammerspoon only handles the macOS shortcut behavior that needs to be emitted at the app level:

- Right Command acts as Super: `ctrl+alt+cmd`
- Right Option acts as Hyper: `ctrl+alt+shift+cmd`
- `F14` acts as Close / Quit / Lock.
- `F15` acts as Minimize / Hide / Desktop.
- `F16` acts as Zoom / Fill / Fullscreen.

These are pseudo modifiers. Hammerspoon intercepts the next keypress while the right-side key is held and emits the combined shortcut. This is app-level event rewriting, not a low-level HID remap.

The action keys use modifier variants:

| Key   | Tap             | Shift + Tap      | Option + Tap      |
|:------|:----------------|:-----------------|:------------------|
| `F14` | Close window    | Quit application | Lock screen       |
| `F15` | Minimize window | Hide application | Show desktop      |
| `F16` | Zoom window     | Fill window      | Fullscreen window |

## Relationship To VIA And Kanata

- VIA handles the Rainy 75 firmware layout. Its save lives at `apps/via/rainy_75.layout.json`.
- Kanata is the primary layer for Super, Hyper, and action key shortcuts.
- Hammerspoon does the same job on Macs where Kanata can't run.

## Install

Install Hammerspoon:

```sh
brew install --cask hammerspoon
```

Copy or symlink the config to:

```sh
~/.config/hammerspoon/init.lua
```

Tell Hammerspoon to load the config from XDG-style config location:

```sh
defaults write org.hammerspoon.Hammerspoon MJConfigFile "~/.config/hammerspoon/init.lua"
```

Launch Hammerspoon and grant Accessibility permission when prompted. If a managed Mac blocks  Accessibility permission too, Hammerspoon will not be able to intercept keyboard events.
