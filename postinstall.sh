#!/bin/sh

apt install -y krita kdenlive audacity vlc gimp libreoffice thunderbird inkscape blender git vim mpv openvpn chromium flameshot wget

if dbt -s &> /dev/null;then
	yes | apt remove --purge dbt
fi

wget https://github.com/nsn90255/project/releases/download/1.0/dbt.deb 

yes | dpkg -i dbt.deb

usermod -rG sudo user

cp 'Liberar 1h.desktop' /Escritorio/

chmod 755 '/Escritorio/Liberar 1h.desktop'

cp /usr/share/backgrounds/linuxmint-victoria/tstudler_switzerland.jpg /usr/share/backgrounds/linuxmint/default_background.jpg

cp 99-usb-noexec.rules /etc/udev/rules.d/

cp fstab /etc/fstab

cp user-dirs.dirs /home/user/.config/

chown root:root /home/user/.config/user-dirs.dirs

chmod 644 /home/user/.config/user-dirs.dirs

mkdir /etc/skel/.config
cp user-dirs.dirs /etc/skel/.config/

echo "%users ALL=(ALL) NOPASSWD: /usr/local/bin/dbt -i" >> /etc/sudoers
echo "%users ALL=(ALL) NOPASSWD: /usr/local/bin/dbt -g" >> /etc/sudoers

echo "Done, rebooting in 10 seconds"

sleep 10

reboot
