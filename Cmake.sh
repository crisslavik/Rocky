APP_NAME="Cmake"

echo -e "\033[0;32m=================================================="
echo -e "\033[1;32m===  NOX VFX - Rocky Linux 9.4 Install Script" ===
echo -e "\033[1;32m===         Installing $APP_NAME"              ===
echo -e "\033[0;32m==================================================\033[0m"


#install latest CMake
sudo dnf install gcc -y
export CC=gcc

git clone https://github.com/Kitware/CMake.git

cd CMake

sudo ./bootstrap
sudo gmake
sudo gmake install
