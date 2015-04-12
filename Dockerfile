FROM base/archlinux
MAINTAINER Marco Monteiro <marco@neniu.org>

RUN pacman-key --populate archlinux && \
    pacman-key --refresh-keys && \
    pacman -Sy pacman --needed --noconfirm --noprogressbar && \
    pacman-db-upgrade && \
    echo -e '\n[masm]\nSigLevel = Optional TrustAll\nServer = http://pacman-repo.neniu.org/$arch' >> /etc/pacman.conf && \
    pacman -Syyu --noconfirm --noprogressbar

ONBUILD RUN pacman -Sy pacman --needed --noconfirm --noprogressbar && \
            pacman-db-upgrade && \
            pacman -Syyu --noconfirm --noprogressbar
