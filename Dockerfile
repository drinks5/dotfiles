FROM heliary/archlinux-cn

ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8   

RUN pacman -Syu --noconfirm
RUN pacman -S neovim git curl wget openssh python python-pip zsh gcc nodejs npm tmux python2-pip ripgrep autojump --noconfirm
RUN git clone https://github.com/drinksober/dotfiles.git --depth=1 /root/dotfiles && cd /root/dotfiles && sh -x install.local \
    && mkdir ~/Documents \
    && mkdir ~/.config/nvim -p \
    && ln vimrc.bundles ~/.vimrc.bundles \
    && ln .zshrc ~/.zshrc \
    && ln /usr/bin/python3 /usr/local/bin/python3
WORKDIR ~/Documents
CMD ["/bin/zsh"]
