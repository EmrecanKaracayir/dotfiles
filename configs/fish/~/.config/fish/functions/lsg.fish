function lsg --description "List all files in long format with git specific information"
    eza --long --hyperlink --all --group-directories-first --header \
        --octal-permissions --git --git-repos $argv
end
