APP_NAME="Unreal Engine"

echo -e "\033[0;32m=============================================================="
echo -e "\033[0;32m==  NOX VFX - All the informations here was found online    =="
echo -e "\033[0;32m==          Installing $APP_HAME                            =="
echo -e "\033[0;32m=============================================================="


git clone git@github.com:EpicGames/UnrealEngine.git

cd UnrealEngine
./Setup.sh

./GenerateProjectFiles.sh

make

cd Engine/Binaries/Linux

./UnrealEditor
