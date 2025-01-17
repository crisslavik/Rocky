#!/bin/bash

APP_NAME="nvidia-driver:latest-dkms"

echo -e "\033[0;32m====================================="
echo -e "\033[1;32mThe Linux IT Guy - Rocky Linux 9.4 Install NVIDIA Driver Script"
echo -e "\033[1;32mInstalling $APP_NAME"
echo -e "\033[0;32m=====================================\033[0m"

# https://forums.rockylinux.org/t/nvidia-drivers-on-rocky-linux/12366
# install nvidia driver from nvidia's official repo
sudo dnf module install nvidia-driver:latest-dkms -y

#New Process
sudo dnf config-manager --add-repo http://developer.download.nvidia.com/compute/cuda/repos/rhel9/$(uname -i)/cuda-rhel9.repo
sudo dnf install kernel-headers-$(uname -r) kernel-devel-$(uname -r) tar bzip2 make automake gcc gcc-c++ pciutils elfutils-libelf-devel libglvnd-opengl libglvnd-glx libglvnd-devel acpid pkgconfig dkms -y
#sudo dnf module install nvidia-driver:latest-dkms -y
echo "blacklist nouveau" | sudo tee /etc/modprobe.d/blacklist-nouveau.conf
echo 'omit_drivers+=" nouveau "' | sudo tee /etc/dracut.conf.d/blacklist-nouveau.conf
sudo dracut --regenerate-all --force
sudo depmod -a

sudo mokutil --import /var/lib/dkms/mok.pub
