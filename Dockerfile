FROM docker.io/archimg/base-devel

RUN sed -i "\$a[archlinuxcn]\nServer = https://cdn.repo.archlinuxcn.org/\$arch" /etc/pacman.conf && \
	pacman -Syy --noconfirm && pacman -S archlinuxcn-keyring --noconfirm && \
	pacman -Syu --noconfirm
ADD dep.sh /dep.sh
RUN env install='pacman -S --noconfirm' sh -x /dep.sh

RUN  pacman -S --noconfirm sudo && \
     useradd mum5
RUN sed -i "s/\#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g" /etc/locale.gen && \ 
    locale-gen
RUN mkdir -p /home/mum5/Documents

WORKDIR /home/mum5/Documents
CMD ["/bin/zsh"]
