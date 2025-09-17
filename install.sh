#!/bin/sh
set -eE
MAIN_PATH="~/vigile"
export PATH="MAIN_PATH"
echo Hello there, installing vigileos ..
source packages.sh
echo packages were installed.
sleep 3
sudo cp osCustom/os-release /etc/
sudo mkdir /usr/share/wallpapers/ && mkdir /usr/share/userlogo/
sudo mv osCustom/wallpapers/Lines.png /usr/share/wallpapers/
sudo mv osCustom/logo/logo.txt /usr/share/userlogo
sudo mv osCustom/logo/matrix.jpg /usr/share/userlogo/
sudo systemctl enable bluetooth.service
sudo systemctl enable iwd.service
sudo systemctl disable systemd-networkd-wait-online.service
sudo systemctl mask systemd-networkd-wait-online.service
mv makeup/* ~/
chsh -S /bin/fish
source nvidia.sh
sudo grub-mkconfig -o /boot/grub/grub.cfg
echo installation finished!!
sleep 1
source reboot.sh

