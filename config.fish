set PATH ~/.local/bin $PATH
set MANPATH ~/Documents/man:$MANPATH

alias desk 'cd ~/Desktop'
set fish_function_path $fish_function_path "~/.local/lib/python2.7/site-packages/powerline/bindings/fish" powerline-setup
export EDITOR='vim'


function do
    nohup $argv >/dev/null 2>&1 &
end

alias grip 'do ~/Documents/datagrip/bin/datagrip.sh'

function hfa
    if not count $argv > /dev/null
        cd ~/Desktop/adtracker
        . ~/Documents/py27/bin/activate.fish
    else
        switch $argv
            case jmp
                sshpass -p drinks ssh drinks_huang@$JMP -p 31122
            case 'dev'
                sshpass -p 123456 ssh root@10.123.1.172 -p 2279
            case cas
                sshpass -p redhat  ssh root@10.123.1.119
            case '*'
                cd ~/Desktop/adtracker
                . ~/Documents/py27/bin/activate.fish
        end
    end
end

function board
    if not count $argv > /dev/null
        cd ~/Desktop/Dashboard
        . ~/Documents/py35/bin/activate.fish
    else
        switch $argv
            case 'dev'
                sshpass -p 123456 ssh root@10.123.1.172 -p 2279
            case cas
                sshpass -p redhat  ssh root@10.123.1.119
            case '*'
                cd ~/Desktop/adtracker
                . ~/Documents/py27/bin/activate.fish
        end
    end
end

