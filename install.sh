#!/bin/bash

if ! [ -x "$(command -v flatpak)" ]; then
    echo "Please run 'prerequisite.sh' first!"
    exit 1
fi

flatpak install -y -v --user flathub org.gnome.Sdk//3.30
flatpak install -y -v --user flathub org.gnome.Builder//stable

echo ""
echo ".--- Installed applications ---."
flatpak list

