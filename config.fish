source $HOME/.config/fish/init.fish
set PATH ~/.local/bin $PATH
set MANPATH ~/Documents/man:$MANPATH

alias desk 'cd ~/Desktop'
set fish_function_path $fish_function_path "/home/linlin/.local/lib/python3.6/site-packages/powerline/bindings/fish" powerline-setup

export EDITOR='vim'

alias qq 'cd ~/.wine/drive_c/Program\ Files/QQ/Users/398869368/FileRecv/'

function c
    if test -e $argv
        cat $argv | xclip -selection c
    else
        xclip -selection c
    end
end
alias chongqi '/usr/bin/reboot'
alias docker 'sudo (which docker)'
alias pacman 'sudo /usr/bin/pacman'

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
            case pypy
                cd ~/Desktop/forest
                . ~/Documents/pypy/bin/activate.fish
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

