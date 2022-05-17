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
git push origin main

# Sjungbok
cd ../../Sjungbok/texter/
rm -f *
cp ../../Sangtexter/* .
rm deploy.sh
rm install.sh
rm README.md
git add .
git commit -m "Deployed database $(date +%Y-%m-%d)"
git push origin main

read -n 1