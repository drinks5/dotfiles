source $HOME/.config/fish/init.fish
set PATH ~/.local/bin $PATH
set PATH ~/.npm-global/bin $PATH
set MANPATH ~/Documents/man:$MANPATH
set GOPATH $HOME/go

function px
    set http_proxy 127.0.0.1:1089
    set HTTP_PROXY 127.0.0.1:1089
    set https_proxy 127.0.0.1:1089
    set HTTPS_PROXY 127.0.0.1:1089
end

set -x HOMEBREW_BOTTLE_DOMAIN https://mirrors.ustc.edu.cn/homebrew-bottles
set -x HOMEBREW_GITHUB_API_TOKEN b975e4fc3b328b9bb8fc8cfc1c25e4cc45e51361


export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

alias desk 'cd ~/Desktop'
set fish_function_path $fish_function_path "/home/linlin/.local/lib/python3.6/site-packages/powerline/bindings/fish" powerline-setup

alias vim 'nvim'
export EDITOR='nvim'

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
    cd ~/Documents/ssrd
    source ~/.virtualenvs/pypy3/bin/activate.fish
end

function fe
    cd ~/Documents/ssrd-fe
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
        cd ~/Documents/adtracker
        source ~/.virtualenvs/py27/bin/activate.fish
    else
        switch $argv
            case old
                cd ~/Desktop/hfa/new_adtracker
                source ~/.virtualenvs/py27old/bin/activate.fish
            case jmp
                sshpass -p drinks ssh drinks_huang@$JMP -p 31122
            case dev
                sshpass -p redhat ssh root@10.123.1.119 -p 2279
            case cas
                sshpass -p redhat  ssh root@10.123.1.119
            case jks
                sshpass -p 123456 ssh root@10.1.0.98
            case saas
                sshpass -p redhat ssh root@10.23.48.46
            case db
                sshpass -p redhat ssh root@10.23.46.174

            case '*'
                cd ~/Documents/adtracker
                source ~/.virtualenvs/py27/bin/activate.fish
        end
    end
end

function board
    if not count $argv > /dev/null
        cd ~/Documents/Dashboard
        source ~/.virtualenvs/py36/bin/activate.fish
    else
        switch $argv
            case 'dev'
                sshpass -p redhat ssh root@10.123.155.192
            case cas
                sshpass -p redhat  ssh root@10.123.1.119
            case '*'
                cd ~/Documents/adtracker
                source ~/.virtualenvs/py36/bin/activate.fish
        end
    end
end

function jsonpp
    echo $argv[1] | python -m json.tool
end

function dl
    set $cmd "wget $argv"
    echo $cmd
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
