sudo rm /etc/lightdm

echo "exec i3" > $HOME/.xinitrc
mkdir $HOME/.tmp
echo "TMPDIR=$HOME/.tmp/" | sudo tee --append /etc/yaourtrc

# System upgrade
echo "===> Upgrading system..."
sudo pacman -Syu

# Base packages
echo "===> Installing base packages..."
yaourt -S --needed --noconfirm \
    gtk3 \
    i3-gaps \
    i3lock-color \
    lightdm-gtk-greeter \
    rxvt-unicode \
    xorg-apps \
    xorg-server \
    xorg-xinit \

# Oh-My-Zsh
echo "===> Installing Oh-My-Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo systemctl enable lightdm.service
sleep1
sudo reboot