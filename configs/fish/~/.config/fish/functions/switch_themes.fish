function switch_themes
    set --local CONFIG_PATH {$HOME}/.config

    # STARSHIP
    if which starship > /dev/null 2>&1
        set --local STARSHIP_PATH {$CONFIG_PATH}/starship

        if not test -e {$STARSHIP_PATH}/.light
            cp -f {$STARSHIP_PATH}/codemos-modern-light.toml {$CONFIG_PATH}/starship.toml
            touch {$STARSHIP_PATH}/.light
            print 0 INFORMATION "Starship switched to light mode."
        else
            cp -f {$STARSHIP_PATH}/codemos-modern-dark.toml {$CONFIG_PATH}/starship.toml
            rm {$STARSHIP_PATH}/.light
            print 0 INFORMATION "Starship switched to dark mode."
        end

        starship init fish | source
    else
        print 0 WARNING "Starship is not detected."
    end
end
