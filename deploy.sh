#!/bin/bash


REPO="https://github.com/Alexkon22/shvirtd-example-python.git"
DIR="/opt/shvirtd-example-python"

# качаем  свежую копию репозитория
sudo rm -rf "$DIR"
sudo git clone "$REPO" "$DIR"
cd "$DIR"

# Создание .env (в git его нет, он в .gitignore)
sudo tee .env > /dev/null <<EOF
MYSQL_ROOT_PASSWORD="YtReWq4321"
MYSQL_DATABASE="virtd"
MYSQL_USER="app"
MYSQL_PASSWORD="QwErTy1234"
EOF

# Сборка и запуск docker
docker compose up -d --build
docker ps
