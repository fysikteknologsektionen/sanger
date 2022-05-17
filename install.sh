#!/bin/bash
set -x
cd ..
git clone https://github.com/Fysikteknologsektionen/Sanghafte.git
git clone https://github.com/Fysikteknologsektionen/Sjungbok.git
cd Sanghafte
git pull origin main
cd ../Sjungbok
git pull origin main
