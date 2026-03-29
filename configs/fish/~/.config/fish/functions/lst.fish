function lst --description "List all files in long format with tree view"
    eza --long --hyperlink --all --group-directories-first --header \
        --octal-permissions --tree $argv
end
