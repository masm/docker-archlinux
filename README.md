# docker-archlinux

> A fully updated Arch Linux base image built from `masm/archlinux-base`

[![Arch Linux](https://raw.githubusercontent.com/masm/docker-archlinux/master/logo.png)](http://archlinux.org)

This image Pacman's configuration includes a repository that contains some packages from AUR.

## Install

Pull this image with `docker pull masm/archlinux`.

## Usage

In your Dockerfile, include the line `FROM masm/archlinux`. All system packages will be updated ONBUILD.

## License

Copyright (c) 2014-2015 Logan Koester. Released under the MIT license. See `LICENSE` file for details.
