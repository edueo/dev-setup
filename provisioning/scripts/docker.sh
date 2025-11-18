#!/usr/bin/env sh

sudo dnf -y install dnf-plugins-core
sudo dnf-3 config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo systemctl enable --now docker

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker


sudo systemctl enable docker.service
sudo systemctl enable containerd.service
