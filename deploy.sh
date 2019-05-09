#!/bin/bash
set -x
# Sånghäfte
cd ../Sanghafte/texter/
rm -f *
cp ../../Sangtexter/* .
rm deploy.sh
rm install.sh
rm README.md
git add .
git commit -m "Deployed database $(date +%Y-%m-%d)"
git push origin master
git fetch overleaf
git reset --hard overleaf/master
git pull overleaf master
rm -f *
cp ../../Sangtexter/* .
rm deploy.sh
rm install.sh
git add .
git commit -m "Deployed database $(date +%Y-%m-%d)"
git push overleaf master
git reset --hard origin/master

# Sjungbok
cd ../../Sjungbok/texter/
rm -f *
cp ../../Sangtexter/* .
rm deploy.sh
rm install.sh
rm README.md
git add .
git commit -m "Auto-deployed database"
git push origin master
git fetch overleaf
git reset --hard overleaf/master
git pull overleaf master
rm -f *
cp ../../Sangtexter/* .
rm deploy.sh
rm install.sh
git add .
git commit -m "Auto-deployed database"
git push overleaf master
git reset --hard origin/master
