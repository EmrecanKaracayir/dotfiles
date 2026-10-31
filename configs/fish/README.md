# Fish Configs

This folder documents the standard Fish config layout in a simple way.

## Main Paths

Fish reads config from:

- `~/.config/fish/config.fish`
- `~/.config/fish/conf.d/*.fish`
- `~/.config/fish/functions/*.fish`
- `~/.config/fish/themes/*.theme`

This folder also stores `~/.hushlogin`, which shapes how new shells start.

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

### `~/.hushlogin`

Use this empty file to silence the login banner.

- When it exists, `login` skips the "Last login" line and the message of the day.
- Terminals that start shells through `login`, such as Ghostty and Terminal, stop printing it.
- The file's content does not matter. Only its presence does.

## Fisher

This setup uses [Fisher](https://github.com/jorgebucaran/fisher) for Fish plugins.

Installed plugins:

- [decors/fish-ghq](https://github.com/decors/fish-ghq)
- [jorgebucaran/fisher](https://github.com/jorgebucaran/fisher)
- [jorgebucaran/nvm.fish](https://github.com/jorgebucaran/nvm.fish)
- [patrickf1/fzf.fish](https://github.com/patrickf1/fzf.fish)

## Node

Node is managed by nvm.fish, with no global Node installed. `conf.d/node.fish` sets it up:

- `nvm_default_version` is `24`, so every interactive shell has Node.
- On every `cd`, `nvm use` picks the nearest `.nvmrc` or `.node-version`.
  Outside a project, the shell goes back to the default.
- A version that isn't installed yet is installed with `nvm install`.
- A shell opened inside a project switches on its first prompt.

`nvm install` downloads the version index each time, so it only runs when `nvm use` fails.

nvm.fish only reads `.nvmrc` when `nvm use` or `nvm install` runs without a version, which is
why this file exists.
