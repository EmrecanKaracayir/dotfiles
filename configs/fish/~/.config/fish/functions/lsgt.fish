function lsgt --description "List all files in long format with git specific information and tree view"
    eza --long --hyperlink --all --group-directories-first --header \
        --octal-permissions --git --git-repos --tree $argv
end
