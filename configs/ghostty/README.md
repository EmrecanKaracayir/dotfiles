# Ghostty Configs

This folder documents a simple Ghostty config layout.

## Main Paths

Ghostty config in this repo is organized as:

- `~/Library/Application Support/com.mitchellh.ghostty/config.ghostty`
- `~/.config/ghostty/themes/*`
- `~/.config/ghostty/icons/*`

## What Goes Where

### `config.ghostty`

Use this as the main Ghostty configuration file.

- Add terminal settings as `key = value`.
- Keep global app settings here (window, font, appearance, platform options).

### `themes/*`

Use this folder for Ghostty theme files.

- Keep one file per theme variant.
- Reference theme names from `config.ghostty`.

### `icons/*`

Use this folder for custom icon assets.

- Store icon files used by Ghostty.
- Useful for platform-specific custom app icon settings.
