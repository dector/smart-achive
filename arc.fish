set _VERSION 0.0.0.1

function arc
    argparse \
        'v/version' \
        'h/help' \
        -- $argv

    if set -q _flag_version
        echo $_VERSION
        return
    end

    if set -q _flag_help
        echo 'arc - archives wrapper'
        return
    end
end

arc $argv

