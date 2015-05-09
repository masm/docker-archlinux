FROM masm/archlinux-base
MAINTAINER Marco Monteiro <marco@neniu.org>

RUN pacman-key --populate archlinux && \
    dirmngr </dev/null && \
    pacman-key --refresh-keys && \
    pacman -Sqy pacman --needed --noconfirm --noprogressbar && \
    pacman-db-upgrade && \
    echo -e '\n[masm]\nSigLevel = Optional TrustAll\nServer = http://pacman-repo.neniu.org/$arch' >> /etc/pacman.conf && \
    pacman -Sqyyu --noconfirm --noprogressbar && \
    yes | pacman -Sqcc && \
    rm -rf /usr/share/man/*

ONBUILD RUN pacman -Sqy pacman --needed --noconfirm --noprogressbar && \
            pacman-db-upgrade && \
            pacman -Sqyyu --noconfirm --noprogressbar && \
            yes | pacman -Sqcc && \
            rm -rf /usr/share/man/*
