#!/bin/sh

mkdir -p ~/.config

# Install gtk config
cp -r ./dotfiles/gtk-3.0 ~/.config

# Install nixos configs
sudo cp ./configuration.nix ./hardware-configuration.nix /etc/nixos

# Install starship config
cp ./dotfiles/starship.toml ~/.config/starship.toml

# Install kitty config
cp -r ./dotfiles/kitty ~/.config

cp -r ./dotfiles/helix ~/.config

# Install zsh config
cp ./dotfiles/zshrc ~/.zshrc

# Sway
cp -r ./dotfiles/sway ~/.config
cp -r ./dotfiles/swaylock ~/.config

# Wallpapers
mkdir -p ~/Pictures/Wallpapers
curl -s https://raw.githubusercontent.com/Gingeh/wallpapers/main/mandelbrot/mandelbrot_gap_green.png > ~/Pictures/Wallpapers/mandelbrot_gap_green.png
