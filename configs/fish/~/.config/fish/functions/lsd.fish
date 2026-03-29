function lsd --description "List all files in long format"
    eza --long --hyperlink --all --group-directories-first --header \
        --octal-permissions $argv
end
