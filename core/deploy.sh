#!/bin/bash

echo "Deploy ke GitHub..."

git add .
git commit -m "deploy update"
git push origin main

echo "Deploy selesai"
