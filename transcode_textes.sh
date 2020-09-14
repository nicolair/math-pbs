# modification de \input{isopbpdf.tex} en \input{pbpdf}dans les fichiers à compiler
sed -i 's/isopbpdf.tex/pbpdf.tex/g' A*.tex
sed -i 's/isopbpdf.tex/pbpdf.tex/g' M*.tex
sed -i 's/isopbpdf.tex/pbpdf.tex/g' S*.tex

# transcodage des fichiers à compiler (petits donc en place)
find . -path './A*.tex' -exec iconv -f ISO_8859-15 -t UTF-8 -o "{}" "{}" \;
find . -path './M*.tex' -exec iconv -f ISO_8859-15 -t UTF-8 -o "{}" "{}" \;
find . -path './S*.tex' -exec iconv -f ISO_8859-15 -t UTF-8 -o "{}" "{}" \;

# transcodage des fichiers sources (gros donc via un output externe)
mkdir utf
find . -path './C*.tex' -exec iconv -f ISO_8859-15 -t UTF-8 -o utf/"{}" "{}" \;
cp utf/*  ./
rm utf/*

find . -path './E*.tex' -exec iconv -f ISO_8859-15 -t UTF-8 -o utf/"{}" "{}" \;
cp utf/*  ./
rm -r -f utf

