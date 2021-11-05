#!/bin/bash
#set -e
echo "##########################################"
echo "Be Careful this will override your Rice!! "
echo "##########################################"
sleep 5
echo "Creating Backups of ~/.config folder"
echo "#####################################"
cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)
sleep 2
echo "Installing required Tools"
echo "#################################"
sudo apt install qt5-style-kvantum latte-dock lolcat neofetch yakuake
sleep 2
echo "Installing Layan Theme"
echo "#################################"
git clone https://github.com/vinceliuice/Layan-kde && cd Layan-kde && ./install.sh
cd ..
git clone https://github.com/vinceliuice/Tela-circle-icon-theme && cd Tela-circle-icon-theme && ./install.sh -c purple
cd ..
git clone https://github.com/vinceliuice/Layan-gtk-theme && cd Layan-gtk-theme && ./install.sh
cd ..
sleep 2
echo "Installing Fonts"
echo "#################################"
sudo apt install fonts-firacode fonts-font-awesome libfontawesomefx-java tex-gyre fonts-noto-color-emoji tex-gyre-fonts fonts-hack-ttf
mkdir -p ~/.local/share/fonts/FiraCodeNerd
cp -Rf FiraCodeNerd/. ~/.local/share/fonts/FiraCodeNerd/
sudo fc-cache -f -v
sleep 2
echo "Applying new Rice, hold on..."
echo "#################################"
cp -Rf Configs/Home/. ~
sudo cp -Rf Configs/System/. /
sudo sed -i "s/ascii_distro=auto/ascii_distro=Debian/g" ~/.config/neofetch/config.conf
sudo sed -i "s/{cl7}Linux/{cl2}Linux/g" ~/.config/neofetch/config.conf
sleep 2
echo "Applying Grub Theme...."
echo "#################################"
chmod +x CyberRe.sh
sudo ./CyberRe.sh
sleep 2
echo "Rebooting system in 5 seconds..."
echo "#################################"
sleep 5
sudo reboot
