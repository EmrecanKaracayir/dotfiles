function lst2 --description "List all files in long format with tree view limited to two levels"
    eza --long --hyperlink --all --group-directories-first --header \
        --octal-permissions --tree --level="2" $argv
end
