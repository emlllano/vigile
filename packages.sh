#!/bin/sh

sudo sed -i -e '/#\[multilib\]/,+1s/^#//' /etc/pacman.conf && \
sudo pacman -Sy --noconfirm && \
sudo pacman -S --noconfirm --needed linux-headers git base-devel tmux vim wget curl python lib32-zlib && \
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && \
yay -S --noconfirm hyprland gtk-layer-shell hyprpolkitagent waybar hyprshot hyprutils xdg-desktop-portal-hyprland hyprpaper && \
yay -S --noconfirm wofi hyprlang waybar hyprland-qtutils hyprland-protocols hypridle hyprgraphics && \
yay -S --noconfirm swaync sushi 7zip grim rar obsidian capitaine-cursors nautilus errands gnome-calendar arch-audit cava kitty && \
yay -S --noconfirm ttf-nerd-fonts-symbols ttf-jetbrains-mono-nerd signal-desktop discord vlc ttf-firacode-nerd starship && \
curl -fsS https://dl.brave.com/install.sh | sh && \
yay -S --noconfirm pavucontrol-qt fish ranger && \
yay -S --noconfirm uwsm swayosd overskride 

