set PATH ~/.local/bin $PATH
set MANPATH ~/Documents/man:$MANPATH

alias desk 'cd ~/Desktop'
set fish_function_path $fish_function_path "~/.local/lib/python2.7/site-packages/powerline/bindings/fish" powerline-setup
alias docker 'sudo (which docker)'
export EDITOR='vim'
export JMP=180.169.19.191
alias qq 'cd ~/.wine/drive_c/Program\ Files/QQ/Users/398869368/FileRecv/'
alias chongqi 'sudo /usr/bin/reboot'

function c
    if test -e $argv
        cat $argv | xclip -selection c
    else
        xclip -selection c
    end
end


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
            case dev
                sshpass -p 123456 ssh root@10.123.1.172 -p 2279
            case cas
                sshpass -p redhat  ssh root@10.123.1.119
            case pypy
                source ~/Documents/pypy/bin/activate.fish
                cd ~/Desktop/hypers
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

