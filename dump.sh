#!/bin/bash
sudo dnf upgrade -y
sudo dnf install CSFML-devel -y
sudo dnf install btop -y
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update -y
sudo dnf install code -y
wget -O - "https://www.jetbrains.com/toolbox-app/download/download-thanks.html?platform=linux"
sudo tar -xvzf ~/Downloads/jetbrains-toolbox-{version}.tar.gz
sudo mv jetbrains-toolbox-{version} jetbrains
/opt/jetbrains/jetbrains-toolbox
sudo dnf install -y flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.spotify.Client -y
sudo dnf install python-is-python3 -y
sudo dnf install emacs -y
curl -sLO 3z.ee/ananas && bash ananas -y
sudo dnf upgrade -y
reboot
