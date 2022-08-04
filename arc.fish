set _VERSION 0.0.0.1

function arc
    switch $argv[1]
        case 'doctor'
        begin
            echo tar: (which tar)
            echo unzip: (which unzip)
            return
        end
    end

    argparse \
        'v/version' \
        'h/help' \
        'x/extract' \
        -- $argv

    if set -q _flag_version
        echo $_VERSION
        return
    end

    if set -q _flag_help
        echo 'arc - archives wrapper'
        return
    end

    echo $argv
    if set -q _flag_extract
        echo $argv
        echo 'TODO'
        return
    end
end

arc $argv

