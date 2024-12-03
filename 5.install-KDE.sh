#!/bin/bash

APP_NAME="KDE"

echo -e "\033[0;32m====================================="
echo -e "\033[1;32mNOX VFX - Rocky Linux 9.4 Install Script"
echo -e "\033[1;32mInstalling $APP_NAME"
echo -e "\033[0;32m=====================================\033[0m"

# https://forums.rockylinux.org/t/nvidia-drivers-on-rocky-linux/12366
# Install KDE
sudo dnf install plasma-desktop -y
sudo dnf install epel-release -y
sudo dnf install sddm dolphin plasma-systemmonitor gwenview kcalc krdc kate kde-gtk-config konsole firefox ark krfb sddm-breeze  -y
