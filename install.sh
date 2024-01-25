echo "Installing gnome tweaks"
sudo dnf install gnome-tweaks gnome-tweak-tool svn -y

echo "Installing Orchis theme"
git clone https://github.com/vinceliuice/Orchis-theme
./Orchis-theme/install.sh
./Orchis-theme/install.sh -l

echo "Installing Orchis Shell MOD"
unzip ./Orchis-Shell-MOD.zip
mkdir -p ~/.themes
rsync -av ./Orchis-Shell-MOD ~/.themes

wget https://mega.nz/linux/repo/Fedora_39/x86_64/megacmd-Fedora_39.x86_64.rpm && sudo dnf install "$PWD/megacmd-Fedora_39.x86_64.rpm" -y

echo "Installing backgrounds, fonts and icons"
mega-get https://mega.nz/folder/ZyExjALD\#JFEA0mB4oDJdlFh6OCAf5w
mv ./FedoFusion/* . && rm -rf ./FedoFusion
unzip ./backgrounds.zip
unzip ./fonts.zip
unzip ./icons.zip
mkdir -p ~/.local/share
# backgrounds
rsync -av ./backgrounds/ ~/.local/share/backgrounds/
# fonts
rsync -av ./fonts/ ~/.local/share/fonts/
# icons
rsync -av ./icons/ ~/.local/share/icons/

echo "Installing Sevi icon theme"
# git clone git@github.com:TaylanTatli/Sevi.git
git clone https://github.com/TaylanTatli/Sevi.git
./Sevi/install -a

echo "Installing WhiteSur firefox theme"
git clone https://github.com/vinceliuice/WhiteSur-firefox-theme.git
./WhiteSur-firefox-theme/install.sh -a

echo "Done installing FedoFusion"
