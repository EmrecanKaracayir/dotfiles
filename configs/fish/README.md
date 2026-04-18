# Fish Configs

This folder documents the standard Fish config layout in a simple way.

## Main Paths

Fish reads config from:

- `~/.config/fish/config.fish`
- `~/.config/fish/conf.d/*.fish`
- `~/.config/fish/functions/*.fish`
- `~/.config/fish/themes/*.theme`

## What Goes Where

### `config.fish`

Use this as your main startup file.

- Good for global shell settings.
- Good for interactive-only setup blocks.

### `conf.d/*.fish`

Use this folder for small startup snippets.

- One concern per file (for example: language runtime env vars).
- Loaded automatically at shell startup.

### `functions/*.fish`

Use this folder for custom commands.

- One function per file.
- File name should match function name.
- Great for aliases with arguments and reusable helper commands.

### `themes/*.theme`

Use this folder for Fish prompt/theme files.

- Keep theme files here.
- Select a theme with `fish_config theme choose ...`.

## Fisher

This setup uses [Fisher](https://github.com/jorgebucaran/fisher) for Fish plugins.

Installed plugins:

- [decors/fish-ghq](https://github.com/decors/fish-ghq)
- [jorgebucaran/fisher](https://github.com/jorgebucaran/fisher)
- [jorgebucaran/nvm.fish](https://github.com/jorgebucaran/nvm.fish)
- [patrickf1/fzf.fish](https://github.com/patrickf1/fzf.fish)
