#!/bin/bash

# Steps from https://docs.fedoraproject.org/en-US/quick-docs/installing-spotify/

sudo dnf install -y flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.spotify.Client
