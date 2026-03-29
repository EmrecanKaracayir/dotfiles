function lsgt2 --description "List all files in long format with git specific information and tree view limited to two levels"
    eza --long --hyperlink --all --group-directories-first --header \
        --octal-permissions --git --git-repos --tree --level="2" $argv
end
