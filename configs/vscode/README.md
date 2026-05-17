# VSCode Configs

This folder documents a simple VSCode config layout for macOS.

## Main Paths

VSCode config in this repo is organized as:

- `~/Library/Application Support/Code/User/keybindings.json`
- `~/Library/Application Support/Code/User/settings.json`

## What Goes Where

### `keybindings.json`

Use this as the user keybinding overrides file.

- One JSON array of keybinding entries.
- Each entry has `command`, `key`, and optional `when`.
- Prefix a `command` with `-` to remove the default binding.

### `settings.json`

Use this for user settings overrides.

- A JSON object with setting keys and values.
- Override any default setting by specifying it here.

## Important Note

VSCode stores user config under `~/Library/Application Support/Code/User/` on macOS. Other Code variants use different folders:

- VSCode Insiders: `~/Library/Application Support/Code - Insiders/User/`
- VSCodium: `~/Library/Application Support/VSCodium/User/`
