#!/bin/sh

apt install -y krita kdenlive audacity vlc gimp libreoffice thunderbird inkscape blender git vim mpv openvpn chromium flameshot wget

wget https://github.com/nsn90255/project/releases/download/1.0/dbt.deb 

yes | dpkg -i dbt.deb

usermod -rG sudo user

cp 'Liberar 1h.desktop' /home/user/Escritorio/

chmod 777 '/home/user/Escritorio/Liberar 1h.desktop'

echo "%users ALL=(ALL) NOPASSWD: /usr/local/bin/dbt -i" >> /etc/sudoers
echo "%users ALL=(ALL) NOPASSWD: /usr/local/bin/dbt -g" >> /etc/sudoers

echo "Done, rebooting in 10 seconds"

sleep 10

reboot
