#!/bin/bash

pacman -Syy

pacman -S reflector

cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak

reflector -c "US" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist


