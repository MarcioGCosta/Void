#!/bin/sh

## Installing misc progams
sudo xbps-install -Su nerd-fonts-ttf picom polybar setxkbmap xrandr elogind feh zsh-syntax-highlighting zsh-autosuggestions libvdpau-va-gl curl make pulsemixer qbittorrent bspwm redshift sxhkd xorg-server-common xorg-minimal ufw xinit polkit polkit-elogind dbus-elogind ntp wireplumber firefox kitty mpv yt-dlp pipewire papirus-icon-theme alsa-pipewire libva-intel-driver rofi playerctl dash go zsh noto-fonts-emoji font-ibm-plex-ttf xorg-fonts neovim opendoas yarn pnpm wl-clipboard xf86-video-intel

## Moving folders
mv $HOME/Vrice/config/.config/ $HOME/.config && mv $HOME/Vrice/config/.zshrc /$HOME/.zshrc && mv $HOME/Vrice/background/ $HOME/.config/ && mv $HOME/Vrice/config/.zshnev /$HOME/.zshnev && mv $HOME/Vrice/config/.xinitrc $HOME/.xinitrc 

## xorg  configuration
sudo mv $HOME/Vrice/config/20-intel-gpu.conf /etc/X11/xorg.conf.d/

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
sudo ln -s /etc/sv/polkit /var/service
sudo ln -s /etc/sv/dbus /var/service

sudo mkdir -p /etc/alsa/conf.d && sudo ln -s /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d && sudo ln -s /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d
