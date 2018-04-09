#!/bin/zsh

# nvm and node
echo "===> Installing node and npm global packages..."
export NVM_DIR="$HOME/.nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install node

# npm global packages
npm install -g express-generator
npm install -g create-react-app
npm install -g typescript

# Main yaourt install
echo "===> Running main yaourt install..."

yaourt -S --needed --noconfirm gvfs

yaourt -S --needed --noconfirm \
    \
    perl-anyevent-i3 \
    compton \
    dunst \
    nitrogen \
    polybar \
    rofi \
    \
    ttf-google-fonts-git ttf-fira-code ttf-fira-mono ttf-hack \
    ttf-font-awesome ttf-font-awesome-4 ttf-material-icons ttf-weather-icons \
    \
    cups cups-pdf ghostscript libcups system-config-printer \
    \
    alsa-lib alsa-plugins alsa-utils \
    gstreamer gst-libav gst-plugins-base gst-plugins-good \
    pulseaudio pulseaudio-alsa pulseaudio-ctl pacli pavucontrol playerctl \
    \
    networkmanager network-manager-applet \
    \
    arandr \
    arc-gtk-theme \
    curl \
    flashplugin \
    franz \
    git \
    gitkraken \
    google-chrome \
    gparted \
    gthumb \
    gucharmap \
    htop  \
    jdk8-openjdk \
    jq \
    libmpdclient \
    lsb-release \
    lxappearance \
    lxinput \
    lxmusic \
    lxtask \
    net-tools \
    nvm \
    paper-icon-theme \
    pcmanfm \
    pdftk \
    ruby \
    screenfetch \
    scrot \
    spotify \
    simple-scan \
    terminator \
    vim \
    visual-studio-code-bin \
    vlc \
    watchdog \
    wget \
    xorg-xwininfo

# Global ruby gems
echo "===> Installing ruby gems..."
sudo gem install sass --no-user-install

# VS Code extensions
echo "===> Installing VSCode extensions"
code --install-extension dbaeumer.vscode-eslint
code --install-extension eg2.tslint
code --install-extension esbenp.prettier-vscode
code --install-extension robertohuertasm.vscode-icons
code --install-extension xabikos.ReactSnippets
code --install-extension zhuangtongfa.material-theme

sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service
sudo systemctl enable watchdog.service
sudo systemctl start watchdog.service

rm -rf $HOME/.tmp/*

sleep 1
sudo reboot
