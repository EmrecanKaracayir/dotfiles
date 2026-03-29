function lst5 --description "List all files in long format with tree view limited to five levels"
    eza --long --hyperlink --all --group-directories-first --header \
        --octal-permissions --tree --level="5" $argv
end
