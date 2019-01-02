#!/bin/bash

if ! [ -x "$(command -v flatpak)" ]; then
  sudo add-apt-repository ppa:alexlarsson/flatpak -y
  sudo apt update
  sudo apt install -y flatpak gnome-software-plugin-flatpak
fi

echo "Running remote-add command ..."
flatpak remote-add --user flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Running remote-modify command ..."
flatpak remote-modify --user --collection-id=org.flathub.Stable flathub

echo "Updating local repositories ..."
flatpak update

echo ""
echo ".--- Installed Flatpak ---."
flatpak --version

echo ""
echo ".--- Added repositories ---."
flatpak remotes -d

