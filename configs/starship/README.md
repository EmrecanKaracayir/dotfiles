# Starship Config Layout

This folder documents a simple Starship config layout.

## Main Paths

Starship config in this repo is organized as:

- `~/.config/starship/codemos-modern-dark.toml`
- `~/.config/starship/codemos-modern-light.toml`

## Important Note

The active Starship config file is `~/.config/starship.toml`.

Use `switch_themes.fish` to generate the config automatically.

## Theme Switching

The Fish function `switch_themes` (from `~/.config/fish/functions/switch_themes.fish`) handles theme switching by copying:

- `~/.config/starship/codemos-modern-light.toml` -> `~/.config/starship.toml` for light mode
- `~/.config/starship/codemos-modern-dark.toml` -> `~/.config/starship.toml` for dark mode

It also re-initializes Starship in the current Fish session.
