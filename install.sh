#!/bin/bash

echo "=== DEVBOX INSTALLER ==="

pkg update -y && pkg upgrade -y

pkg install git -y
pkg install python -y
pkg install nodejs -y
pkg install curl -y

echo "DevBox berhasil diinstall!"
