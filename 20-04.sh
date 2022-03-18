# fix PCIe error 
# https://askubuntu.com/questions/771899/pcie-bus-error-severity-corrected
# in /etc/default/gub set
# GRUB_CMDLINE_LINUX_DEFAULT="quiet splash pci=nomsi"
# then run 
# sudo update-grub

# apt update 
sudo apt update
# update ubuntu
sudo apt upgrade

sudo apt install -y baobab mc git-all gnome-tweak-tool xclip gnome-shell-extensions httpie jq vlc peek curl calibre

udo add-apt-repository ppa:hluk/copyq --yes
sudo apt update
sudo apt install -y copyq

sudo add-apt-repository ppa:peek-developers/stable --yes
sudo apt update
sudo apt install peek -y

# development

#nvm node e.t.c frontend
#wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
#nvm install 14.18.1

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt install nodejs -y
sudo npm i npm@7 -g

npm i -g lerna

# postgres
# https://www.postgresql.org/download/linux/ubuntu/
sudo apt install postgresql-12 -y

# jdk
# https://adoptopenjdk.net/installation.html#linux-pkg
# https://askubuntu.com/questions/1157417/install-adoptopenjdk-onto-ubuntu-18-04-lts
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
sudo apt update
sudo apt install -y adoptopenjdk-11-hotspot

# config

# autohide toopbar 
# https://ubuntuhandbook.org/index.php/2020/08/top-panel-auto-hide-ubuntu-20-04/
sudo apt install -y gnome-shell-extension-autohidetopbar
# restart gnome shell
killall -3 gnome-shell
# enable “Hide Top Bar” in "Extensions" app

#autohide left bar (dock)
# settings -> apperarnce -> behavior 

# show clocks on topbar
gsettings set org.gnome.desktop.interface clock-show-seconds true

#fix after hp drivers (hplip)  install
sudo mv /etc/xdg/autostart/hplip-systray.desktop /etc/xdg/autostart/hplip-systray.desktop.old

#headset sennheiser gsp670
#https://github.com/szszoke/sennheiser-gsp670-pulseaudio-profile/releases/tag/1.2
wget https://github.com/szszoke/sennheiser-gsp670-pulseaudio-profile/releases/download/1.2/pulseaudio-sennheiser-gsp670_1.2_all.deb
sudo dpkg -i pulseaudio-sennheiser-gsp670_1.2_all.deb
pulseaudio -k
pulseaudio --start

# desktop matrix
# https://extensions.gnome.org/extension/1485/workspace-matrix/

# idea config
# https://youtrack.jetbrains.com/articles/IDEA-A-2/Inotify-Watches-Limit
# changing IDE default directories
# https://intellij-support.jetbrains.com/hc/en-us/articles/207240985-Changing-IDE-default-directories-used-for-config-plugins-and-caches-storage
# ide commit window
# https://intellij-support.jetbrains.com/hc/en-us/community/posts/360008115520-Version-Control-Tab-is-missing
# fix Pinta
# https://askubuntu.com/questions/926458/what-causes-pinta-to-crash-instantly-when-i-begin-image-selection
