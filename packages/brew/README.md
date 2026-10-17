# Homebrew Packages

User-installed packages and casks, grouped into sets.

Formulae are sourced from `brew list --installed-on-request` and casks from `brew list --cask`.

## Essential Set

Installed on every Mac.

For keyboard automation, install `kanata` if the Mac allows `sudo` and system extensions.
Otherwise, such as on a company Mac, install `hammerspoon` instead.

### Formulae

- `bat`: `cat` with syntax highlighting; fzf.fish uses it for file previews
- `cloc`: Counts lines of code in a project
- `eza`: Modern `ls`; used by the `lsg`/`lst` functions and fzf.fish directory previews
- `fd`: Fast `find`; fzf.fish and LazyVim use it to search files
- `ffmpeg`: Converts and edits audio and video from the terminal
- `fish`: Default shell
- `fisher`: Plugin manager for fish
- `fzf`: Fuzzy finder; powers fzf.fish key bindings and LazyVim pickers
- `ghq`: Clones repos into a tidy tree under `~/Developer/Projects/External`
- `git`: Newer than the git that ships with macOS
- `kanata`: Primary keyboard automation; needs `sudo` and a system extension
- `lazygit`: Terminal UI for git; LazyVim opens it as its git UI
- `neovim`: Terminal text editor; runs LazyVim
- `ripgrep`: Fast `grep`; LazyVim uses it for live grep
- `starship`: Shell prompt

### Casks

- `chatgpt`: OpenAI's desktop app
- `claude`: Anthropic's desktop app
- `figma`: UI design tool
- `font-cascadia-code-nf`: Nerd Font for Ghostty; provides the icons in `eza` and Starship
- `ghostty`: Terminal emulator
- `google-gemini`: Google's Gemini desktop app
- `hammerspoon`: Fallback keyboard automation where `kanata` can't run
- `iina`: Video player
- `mac-mouse-fix`: Smooth scrolling and extra buttons for third-party mice
- `monitorcontrol`: Brightness and volume keys for external displays
- `notion`: Notes and docs
- `qbittorrent`: BitTorrent client
- `visual-studio-code`: Code editor

## Creator Set

Installed on Macs used for writing and content creation.

### Casks

- `scrivener`: Writing app; the cask is the direct version (App Store one can't run Pandoc)
