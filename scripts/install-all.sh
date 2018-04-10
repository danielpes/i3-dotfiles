#!/bin/zsh

# Arch packages from official repos
echo "===> Installing Arch packages from official repos..."
sleep 2
sudo pacman -S --noconfirm --needed - < ../packages/official.list

# Arch packages from AUR
echo "===> Installing Arch packages from AUR..."
sleep 2
yay -S --noconfirm --needed  $(< ../packages/aur.list)

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

sleep 2
echo "Press any key to reboot..."
read

sudo reboot
