function lsgt5 --description "List all files in long format with git specific information and tree view limited to five levels"
    eza --long --hyperlink --all --group-directories-first --header \
        --octal-permissions --git --git-repos --tree --level="5" $argv
end
