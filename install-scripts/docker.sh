#!/bin/bash

# Steps from https://docs.docker.com/engine/install/fedora/

# Add docker dnf repo
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

# Install docker
sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Start docker
sudo systemctl start docker

# Allow non-root user access to docker

# Add current user to docker group
sudo usermod -aG docker $USER

# Activate changes to group
newgrp docker
