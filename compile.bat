pandoc -f markdown -t html -o Anforderungsanalyse.pdf.html -s -N --number-offset=0 --template=hdoc.tpl -H hdoc_pdf.css.inc -H  hdoc_syntax.css.inc --highlight-style pygments swe_p2_anforderungsanalyse.0.md
echo Anforderungsanalyse Markdown erzeugt
prince Anforderungsanalyse.pdf.html -o Anforderungsanalyse.pdf
echo Anforderungsanalyse PDF erzeugt
pandoc -f markdown -t html -o Systementwurf.pdf.html -s -N --number-offset=0 --template=hdoc.tpl -H hdoc_pdf.css.inc -H  hdoc_syntax.css.inc --highlight-style pygments swe_p2_systementwurf.0.md
echo Systementwurf Markdown erzeugt
prince Systementwurf.pdf.html -o Systementwurf.pdf
echo Systementwurf PDF erzeugt
pause