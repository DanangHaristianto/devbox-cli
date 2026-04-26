#!/bin/bash

echo "🚀 Installing DevBox CLI..."

pkg update -y && pkg upgrade -y
pkg install git -y

rm -rf $HOME/devbox-cli

git clone https://github.com/DanangHaristianto/devbox-cli.git $HOME/devbox-cli

chmod +x $HOME/devbox-cli/devbox

cp $HOME/devbox-cli/devbox $PREFIX/bin/

echo "✅ DevBox installed!"
echo "👉 ketik: devbox"
