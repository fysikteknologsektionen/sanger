#!/bin/sh

wd=${PWD}
echo ${PWD}

#Keep it clean
mkdir tmp
mkdir tmp/sjungbok
mkdir tmp/sjungbok/bilder
mkdir tmp/texter
cp *.tex tmp/sjungbok/.
cp formatmall.sty tmp/sjungbok/.
cp bilder/* tmp/sjungbok/bilder/.
cp ../texter/* tmp/texter/.

cd tmp/sjungbok
echo ${PWD}

touch index.tex
pdflatex.exe -halt-on-error sjungboken.tex

#Sortera låtar med 1 före 10 o.s.v.
#Funkar bara om de heter "...Nr XX...", typ "Fredmans epistel Nr 23: En liten visa"
echo Sorterar index..
#Sortera åäö och ÅÄÖ rätt
#Den här koden hade behövt göras om. makeindex är gammal och dålig.
sed \
        -e 's/\\indexentry{Nr \([1-9]:.*\)/\\indexentry{Nr 0\1/' \
        -e ':again1 s/^\([^@]*\)\(\\IeC {\\r a}\|å\)/\1zaz/g; t again1' \
        -e ':again2 s/^\([^@]*\)\(\\IeC {\\r A}\|Å\)/\1ZAZ/g; t again2' \
        -e ':again3 s/^\([^@]*\)\(\\IeC {\\"a}\|ä\)/\1zbz/g; t again3' \
        -e ':again4 s/^\([^@]*\)\(\\IeC {\\"A}\|Ä\)/\1ZBZ/g; t again4' \
        -e ':again5 s/^\([^@]*\)\(\\IeC {\\"o}\|ö\)/\1zcz/g; t again5' \
        -e ':again6 s/^\([^@]*\)\(\\IeC {\\"O}\|Ö\)/\1ZCZ/g; t again6' < sjungboken.idx > sjungboken2.idx

mv sjungboken2.idx sjungboken.idx

makeindex.exe sjungboken.idx

cat sjungboken.ind | grep \item | sed -r s/'\\item '\([^,].+\),\ \(.*\),\ \(.*\),.*/'\\hyperref\[\3]{\1}\\dotfill\\hyperref\[\3]{\2}\\\\'/>indexsort.tex
cat indexhead.tex indexsort.tex indexfoot.tex > index.tex

#Compile with indexes
pdflatex.exe -halt-on-error framsida.tex
pdflatex.exe -halt-on-error sjungboken.tex
pdflatex.exe -halt-on-error sjungboken.tex
pdflatex.exe -halt-on-error sjungboken-print.tex

cp sjungboken.pdf ../../sjungboken.pdf
cp framsida.pdf ../../framsida.pdf
cp sjungboken-print.pdf ../../sjungboken-print.pdf
cd ../.
rm -rf sjungbok
cd ../.
rm -rf tmp
