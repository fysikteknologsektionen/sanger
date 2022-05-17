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
sed -e 's/\\indexentry{Nr \([1-9]:.*\)/\\indexentry{Nr 0\1/' < sjungboken.idx > sjungboken2.idx
#Sortera åäö och ÅÄÖ rätt
sed -e '
:again
	s/^\([^@]*\)\\IeC {\\r a}/\1zaz/g
	t again
' -e '
:again2
	s/^\([^@]*\)\\IeC {\\r A}/\1ZAZ/g
	t again2
' -e '
:again3
        s/^\([^@]*\)\\IeC {\\"a}/\1zbz/g
        t again3
' -e '
:again4
        s/^\([^@]*\)\\IeC {\\"A}/\1ZBZ/g
        t again4
' -e '
:again5
        s/^\([^@]*\)\\IeC {\\"o}/\1zcz/g
        t again5
' -e '
:again6
        s/^\([^@]*\)\\IeC {\\"O}/\1ZCZ/g
        t again6
' < sjungboken2.idx > sjungboken3.idx

mv sjungboken3.idx sjungboken.idx

makeindex.exe sjungboken.idx

cat sjungboken.ind | grep \item | sed -r s/'\\item '\([^,].+\),\ \(.*\),\ \(.*\),.*/'\\hyperref\[\3]{\1}\\dotfill\\hyperref\[\3]{\2}\\\\'/>indexsort.tex
cat indexhead.tex indexsort.tex indexfoot.tex > index.tex

#sed  -e '
#:again6
#        s/^\([^@]*\)ZZZZ/\1\\IeC {\\"O}/g
#        t again6
#' -e '
#:again5
#        s/^\([^@]*\)zzzz/\1\\IeC {\\"o}/g
#        t again5
#' -e '
#:again4
#        s/^\([^@]*\)ZZZ/\1\\IeC {\\"A}/g
#        t again4
#' -e '
#:again3
#        s/^\([^@]*\)zzz/\1\\IeC {\\"a}/g
#        t again3
#' -e '
#:again
#	s/^\([^@]*\)zz/\1\\IeC {\\r a}/g
#	t again
#' -e '
#:again2
#	s/^\([^@]*\)ZZ/\1\\IeC {\\r A}/g
#	t again2
#' < sjungboken.ind > sjungboken2.ind
#mv sjungboken2.ind sjungboken.ind
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
