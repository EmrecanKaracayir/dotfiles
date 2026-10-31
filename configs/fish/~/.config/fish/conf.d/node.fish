set --global nvm_default_version 24

if status is-interactive
    function _node_use --on-variable PWD
        nvm use --silent 2>/dev/null
        or nvm install 2>/dev/null
        or nvm use --silent default 2>/dev/null
        or nvm install $nvm_default_version
    end

    function _node_startup --on-event fish_prompt
        functions --erase _node_startup
        _node_use
    end
end
