desktop=$(xdg-user-dir DESKTOP)
echo "Preparing the folder..."
mkdir ~/wol/Flowgorithm
cd ~/wol/Flowgorithm/
echo "Downloading Flowgorithm, this depends on your internet connection speed, Please wait..."
wget http://www.flowgorithm.org/download/files/Flowgorithm-Setup.zip -O ~/wol/Flowgorithm/setup.zip
mkdir ~/wol/Flowgorithm/installer
echo "Unzipping Flowgorithm..."
unzip ~/wol/Flowgorithm/setup.zip -d ~/wol/Flowgorithm/installer
echo "The installer is ready to run"
WINEARCH=win64 WINEPREFIX=~/wol/Flowgorithm wine ~/wol/Flowgorithm/installer/setup.exe
echo "Flowgorithm" >> ~/wol/Flowgorithm/name.txt
echo "The installer is finished"
read -rsn1 -p"The installation is finished, Press any key to exit";echo
exit
