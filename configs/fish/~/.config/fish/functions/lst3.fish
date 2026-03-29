function lst3 --description "List all files in long format with tree view limited to three levels"
    eza --long --hyperlink --all --group-directories-first --header \
        --octal-permissions --tree --level="3" $argv
end
