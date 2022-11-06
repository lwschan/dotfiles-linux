#!/bin/bash

# Commands from https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions

# Add VSCode key and repository
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# Update package cache and install VSCode
dnf check-update
sudo dnf install code
