FROM heliary/archlinux-cn

ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8   

RUN pacman -Syu --noconfirm
RUN env install='pacman -S --noconfirm' ./local
WORKDIR ~/Documents
CMD ["/bin/zsh"]
