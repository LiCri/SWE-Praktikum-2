pandoc -f markdown -t html -o %1.pdf.html -s -N --number-offset=%2 --template=hdoc.tpl -H hdoc_pdf.css.inc -H  hdoc_syntax.css.inc --highlight-style pygments %1.md
rem ggf. pfad vor prince angeben
prince %1.pdf.html -o %1.pdf
