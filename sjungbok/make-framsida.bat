@echo off
if not exist "tmp\sjungbok" mkdir tmp\sjungbok
if not exist "tmp\sjungbok\bilder" mkdir tmp\sjungbok\bilder
copy "framsida.tex" "tmp\sjungbok"
copy "bilder\fmark.eps" "tmp\sjungbok\bilder"
cd "tmp\sjungbok"
pdflatex.exe -halt-on-error framsida.tex
copy "framsida.pdf" "..\..\"
cd ..\.
@RD /S /Q sjungbok
cd ..\.
echo Klar!
pause
