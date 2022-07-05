#!/bin/sh


#__/\\\________/\\\________________________________/\\\__        
# _\/\\\_______\/\\\_______________________________\/\\\__       
#  _\//\\\______/\\\___________________/\\\_________\/\\\__      
#   __\//\\\____/\\\________/\\\\\_____\///__________\/\\\__     
#    ___\//\\\__/\\\_______/\\\///\\\____/\\\____/\\\\\\\\\__    
#     ____\//\\\/\\\_______/\\\__\//\\\__\/\\\___/\\\////\\\__   
#      _____\//\\\\\_______\//\\\__/\\\___\/\\\__\/\\\__\/\\\__  
#       ______\//\\\_________\///\\\\\/____\/\\\__\//\\\\\\\/\\_ 
#        _______\///____________\/////______\///____\///////\//__


## Installing misc progams
yes | sudo xbps-install -Su git elogind feh zsh-sytax-highlighting zsh-autosuggestions libvdpau-va-gl curl make pulsemixer qbittorrent sway ufw polkit polkit-elogind dbus-elogind ntp wireplumber firefox waybar kitty mpv yt-dlp pipewire papirus-icon-theme pipewire-alsa libva-intel-driver bemenu playerctl dash go zsh noto-fonts-emoji font-ibm-plex-ttf xorg-fonts neovim doas yarn pnpm wl-clipboard

## Moving folders
mv $HOME/Void/config/.zshrc /$HOME/.zshrc && mv $HOME/Void/config/.config /$HOME/ && sudo mv $HOME/Void/background/* /usr/share/Backgrounds/  &&  mv $HOME/Void/config/.zshnev /$HOME/

## Installing vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


## Symlinking dash as /bin/sh
sudo ln -sfT dash /usr/bin/sh

## Changing user shell to zsh
sudo chsh -s /usr/bin/zsh marcioc

## Neovim configuration
sudo cp -r $HOME/.config/nvim/ /root/.config/

## Symlinking shit
sudo ln -s /etc/sv/elogind /var/service
sudo ln -s /etc/sv/dbus /var/service

sudo reboot
