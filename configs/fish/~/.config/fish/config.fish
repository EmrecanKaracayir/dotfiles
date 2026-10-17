# GREETING
set fish_greeting ""

# HOMEBREW
eval (/opt/homebrew/bin/brew shellenv)

# PATHS
fish_add_path $HOME/.local/bin

# INTERACTIVE
if status is-interactive
    fish_config theme choose codemos-modern
    set fzf_preview_dir_cmd eza --color=always --group-directories-first --icons --long
    starship init fish | source
end
