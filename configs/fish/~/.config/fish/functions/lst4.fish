function lst4 --description "List all files in long format with tree view limited to four levels"
    eza --long --hyperlink --all --group-directories-first --header \
        --octal-permissions --tree --level="4" $argv
end
