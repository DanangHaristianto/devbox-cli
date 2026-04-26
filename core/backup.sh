#!/bin/bash

echo "Backup ke GitHub..."

git add .
git commit -m "backup $(date)"
git push origin main

echo "Backup selesai"
