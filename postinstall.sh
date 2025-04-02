#!/bin/sh

apt install -y firefox krita kdenlive audacity vlc gimp libreoffice thunderbird inkscape blender git vim mpv openvpn chromium flameshot wget

wget https://github.com/nsn90255/project/releases/download/1.0/dbt.deb 

dpkg -i dbt.deb
