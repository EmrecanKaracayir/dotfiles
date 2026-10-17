# Neovim Configs

This folder documents the Neovim setup.

## Main Paths

Neovim config in this repo is organized as:

- `~/.config/nvim/lua/plugins/colorscheme.lua`

## LazyVim

Neovim runs [LazyVim](https://www.lazyvim.org), a ready-made config, with minimal changes.
Most settings are changed through LazyVim's own UI, such as `:LazyExtras`, rather than files.

Install the LazyVim starter, then copy the files above into it:

```sh
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```

## What Goes Where

### `lua/plugins/colorscheme.lua`

Use this to set the theme. Picking one with `<leader>uC` only lasts until Neovim restarts.

- Theme: [catppuccin/nvim](https://github.com/catppuccin/nvim), Latte for light and Mocha for dark.
- Follows Ghostty's light or dark background, which Neovim detects on startup.
- Transparent background, so Ghostty's glass shows through.
- The colorscheme is `catppuccin-nvim`, not `catppuccin`. Neovim 0.12 ships its own
  built-in `catppuccin`, which has fewer highlights and ignores the plugin's options.

## Requirements

LazyVim needs these Homebrew formulae, listed in [packages/brew](../../packages/brew):

- `neovim`, `git`
- `fzf`, `ripgrep`, `fd` for searching
- `lazygit` for the git UI

It also needs a C compiler (Xcode Command Line Tools) and a Nerd Font for icons.
LazyVim installs `tree-sitter-cli` itself through Mason.
