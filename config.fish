source $HOME/.config/fish/init.fish
set PATH ~/.local/bin $PATH
set PATH ~/.npm-global/bin $PATH
set MANPATH ~/Documents/man:$MANPATH


export FZF_DEFAULT_COMMAND='Rg --files --hidden --follow --glob "!.git/*"'

alias desk 'cd ~/Desktop'
set fish_function_path $fish_function_path "/home/linlin/.local/lib/python3.6/site-packages/powerline/bindings/fish" powerline-setup

alias vim 'nvim'
export EDITOR='nvim'

function c
    if test -e $argv
        cat $argv | xclip -selection c
    else
        xclip -selection c
    end
end
alias docker 'sudo (which docker)'
alias dk 'docker-compose'

function gitInit
printf "\
[alias]
ck = checkout
st = status
cm = commit -m
br = branch
df = diff
ls = log --stat
lp = log -p
pl = pull
plo = pull origin
" | cat >> ~/.gitconfig
end

function ssrd
    cd /app/ssrd
    source ~/Documents/ssrd/bin/activate.fish
end

function ali
    if not count $argv > /dev/null
        echo '106.14.133.163'
        ssh ali
    else
        switch $argv
            case mm
                echo '106.14.158.96'
                ssh root@106.14.158.96
            case arch
                echo '106.14.133.163'
                ssh alich
            case '*'
                echo '106.14.133.163'
                ssh ali
        end
    end
end

function hfa
    if not count $argv > /dev/null
        cd ~/Desktop/adtracker
        source ~/Documents/py27/bin/activate.fish
    else
        switch $argv
            case old
                cd ~/Desktop/hfa/new_adtracker
                source ~/Documents/py27old/bin/activate.fish
            case jmp
                sshpass -p drinks ssh drinks_huang@$JMP -p 31122
            case dev
                sshpass -p redhat ssh root@10.123.1.119 -p 2279
            case pypy
                cd ~/Desktop/forest
                source ~/Documents/pypy/bin/activate.fish
            case cas
                sshpass -p redhat  ssh root@10.123.1.119
            case jks
                sshpass -p 123456 ssh root@10.1.0.98
            case saas
                sshpass -p redhat ssh root@10.23.48.46
            case db
                sshpass -p redhat ssh root@10.23.46.174

            case '*'
                cd ~/Desktop/adtracker
                source ~/Documents/py27/bin/activate.fish
        end
    end
end

function board
    if not count $argv > /dev/null
        cd ~/Desktop/Dashboard
        source ~/Documents/py35/bin/activate.fish
    else
        switch $argv
            case 'dev'
                sshpass -p redhat ssh root@10.123.155.192
            case cas
                sshpass -p redhat  ssh root@10.123.1.119
            case '*'
                cd ~/Desktop/adtracker
                source ~/Documents/py27/bin/activate.fish
        end
    end
end

function updateall
    echo 'start updating ...'

    echo 'updating homebrew'
    brew update
    brew upgrade
    brew cleanup

    echo 'updating fish shell'
    fish_update_completions

    echo 'checking Apple Updates'
    /usr/sbin/softwareupdate -ia
end


#test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
# THEME PURE #
set fish_function_path /Users/huangjun/.config/fish/functions/theme-pure $fish_function_path
