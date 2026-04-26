#!/bin/bash

echo "================================="
echo "      DEVBOX CLI INSTALLER      "
echo "================================="

echo "[1/4] Update system..."
pkg update -y && pkg upgrade -y

echo "[2/4] Install tools..."
pkg install git -y
pkg install python -y
pkg install nodejs -y
pkg install curl -y

echo "[3/4] Clone project..."

if [ -d "$HOME/devbox-cli" ]; then
    rm -rf "$HOME/devbox-cli"
fi

git clone https://github.com/DanangHaristianto/devbox-cli.git $HOME/devbox-cli

echo "[4/4] Setup command..."

chmod +x $HOME/devbox-cli/devbox
cp $HOME/devbox-cli/devbox $PREFIX/bin/

echo "================================="
echo " DEVBOX INSTALLED SUCCESS "
echo " ketik: devbox "
echo "================================="
