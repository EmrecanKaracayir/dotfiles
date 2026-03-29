# GREETING
set fish_greeting ""

# HOMEBREW
eval (/opt/homebrew/bin/brew shellenv)

# INTERACTIVE
if status is-interactive
    fish_config theme choose codemos-modern
    set fzf_preview_dir_cmd eza --color=always --group-directories-first --icons --long
    starship init fish | source
end
