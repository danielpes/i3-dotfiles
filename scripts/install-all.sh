mkdir $HOME/Pictures
mkdir $HOME/Downloads
mkdir $HOME/Videos

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

# Global ruby gems
echo "===> Installing ruby gems..."
sudo gem install sass --no-user-install

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
    ttf-google-fonts-git ttf-fira-code ttf-fira-mono \
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
    arc-gtk-theme \
    curl \
    flashplugin \
    git \
    gitkraken \
    google-chrome \
    gparted \
    gucharmap \
    htop  \
    jdk8-openjdk \
    jq \
    libmpdclient \
    lsb-release \
    lxappearance \
    net-tools \
    nvm \
    paper-icon-theme \
    pcmanfm \
    pdftk \
    ruby \
    screenfetch \
    scrot \
    spotify \
    terminator \
    vim \
    visual-studio-code-bin \
    vlc \
    watchdog \
    wget \
    xorg-xwininfo \
    zsh \

# VS Code extensions
echo "===> Installing VSCode extensions"
code --install-extension dbaeumer.vscode-eslint
code --install-extension eg2.tslint
code --install-extension esbenp.prettier-vscode
code --install-extension robertohuertasm.vscode-icons
code --install-extension xabikos.ReactSnippets
code --install-extension zhuangtongfa.material-theme

sudo systemctl enable NetworkManager.service

rm -rf $HOME/.tmp/*
