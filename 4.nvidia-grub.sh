#!/bin/bash

APP_NAME="GRUB Fix"

echo -e "\033[0;32m====================================="
echo -e "\033[1;32mNOX VFX - Rocky Linux 9.5 POST-Install NVIDIA Script"
echo -e "\033[1;32mAll informations here came from THE LINUX IT GUY"
echo -e "\033[1;32mRunning $APP_NAME"
echo -e "\033[0;32m=====================================\033[0m"

# https://forums.rockylinux.org/t/nvidia-drivers-on-rocky-linux/12366
#modify grub so nouveau doesn't conflict
#sudo grubby --update-kernel=ALL --args="rd.driver.blacklist=nouveau modprobe.blacklist=nouveau"
#sudo sed -i -e 's/GRUB_CMDLINE_LINUX="/GRUB_CMDLINE_LINUX="rd.driver.blacklist=nouveau modprobe.blacklist=nouveau /g' /etc/default/grub

#sudo mokutil --import /var/lib/dkms/mok.pub
sudo reboot

#After the reboot, your system should ask you if you want to enroll a key or something like that, say yes and it asks for the password you gave in the mokutil command.
#Later on, check that the nvidia drivers are installed:
#nvidia-smi

#If you dual boot windows, a windows-driven firmware update may reset the TPM chip (?). Anyway, any time this happens you’ll need to re-run ‘mokutil --import /var/lib/dkms/mok.pub’
