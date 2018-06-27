#!/bin/bash

git clone https://github.com/drinksober/dotfiles.git --depth=1 $HOME/dotfiles
cd $HOME/dotfiles
mkdir $HOME/Documents 
mkdir $HOME/.config/nvim -p 
ln /usr/bin/python3 /usr/local/bin/python3

ln .tmux.conf.local $HOME/
ln .tmux.conf $HOME/
ln .gitconfig $HOME/
ln .npmrc $HOME/
ln .vimrc.bundles $HOME/.vimrc.bundles \

mkdir -p $HOME/.tmuxp
ln tmuxp/hfa.yml $HOME/.tmuxp/
ln tmuxp/ss.yml $HOME/.tmuxp/

mkdir $HOME/.pip
ln pip.conf $HOME/.pip/

pip3 install -r requirements.txt --user

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions --depth=1
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git --depth=1 ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting --depth=1
rm $HOME/.zshrc && ln .zshrc $HOME/

git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf --depth=1
npm config set registry https://registry.npm.taobao.org
npm install vue-language-server -g
npm i -g javascript-typescript-langserver


# $HOME/.fzf/install
