#!/bin/bash

if [ -x "$(command -v flatpak)" ] && [ $(flatpak --version | cut -d" " -f2) != "1.0.6" ]; then
  echo ""
  echo " ** Current flatpak is $CURVER"
  echo " ** It will be purged"
  sudo apt purge -y flatpak
fi

if ! [ -x "$(command -v flatpak)" ]; then
  echo ""
  echo " ** Installing latest flatpak now..."
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

