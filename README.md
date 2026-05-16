# dotfiles

This repo contains configuration files, app-specific notes, and package lists.

## Structure

### [apps/](apps)

App-specific notes, settings references, and other documentation that do not always belong in a raw config file.

- [apps/vscode](apps/vscode): Visual Studio Code notes and shortcut references

### [configs/](configs)

Configuration files for tools that read from fixed paths on disk.

- [configs/fish](configs/fish): Fish shell configuration
- [configs/ghostty](configs/ghostty): Ghostty terminal configuration
- [configs/git](configs/git): Git configuration
- [configs/kanata](configs/kanata): Kanata keyboard remapper configuration
- [configs/ssh](configs/ssh): SSH client configuration
- [configs/starship](configs/starship): Starship prompt configuration
- [configs/vscode](configs/vscode): Visual Studio Code configuration

Most config folders mirror the real filesystem layout by storing files under `~` or another system path used by the tool.

### [packages/](packages)

Installed package lists grouped by package manager.

- [packages/brew](packages/brew): Homebrew formulae and casks

## Notes

Each top-level folder includes its own README with a short layout guide.

## License

Licensed under the MIT License. See [LICENSE.md](LICENSE.md) for details.
