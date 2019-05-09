#!/bin/bash
# Sånghäfte
cd ../Sanghafte/texter/
rm -f *
cp ../../Sangtexter/* .
rm deploy.sh
rm install.sh
git add .
git commit -m "Auto-deployed database"
git push origin master
git reset --hard overleaf/master
rm -f *
cp ../../Sangtexter/* .
rm deploy.sh
rm install.sh
git add .
git commit -m "Auto-deployed database"
git push overleaf master
git reset --hard origin/master

# Sjungbok
cd ../../Sjungbok/texter/
rm -f *
cp ../../Sangtexter/* .
rm deploy.sh
rm install.sh
git add .
git commit -m "Auto-deployed database"
git push origin master
git reset --hard overleaf/master
rm -f *
cp ../../Sangtexter/* .
rm deploy.sh
rm install.sh
git add .
git commit -m "Auto-deployed database"
git push overleaf master
git reset --hard origin/master