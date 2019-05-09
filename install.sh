#!/bin/bash
cd ..
git clone https://github.com/Fysikteknologsektionen/Sanghafte.git
git clone https://github.com/Fysikteknologsektionen/Sjungbok.git
cd Sanghafte
git remote add overleaf https://git.overleaf.com/54e5b6820d375d1d1caa29fd
git pull origin master
cd ../Sjungbok
git remote add overleaf https://git.overleaf.com/5963b6683221c71c5202b7f9
git pull origin master