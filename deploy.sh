#!/bin/bash
rm -f ../Sanghafte/texter/*
cp * ../Sanghafte/texter/
rm -f ../Sjungbok/texter/*
cp * ../Sjungbok/texter/

cd ../Sanghafte/texter/
rm deploy.sh
rm install.sh
git commit -ma "Auto-deployed database"
git push master origin
git push master overleaf

cd ../../Sjungbok/texter/
rm deploy.sh
rm install.sh
git commit -ma "Auto-deployed database"
git push master origin
git push master overleaf