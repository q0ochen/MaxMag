# Quit on first error
set -e

# Clear out junk
rm -f *aux
rm -f printableThesis.ind
rm -f printableThesis.toc
rm -f printableThesis.bbl

# Create empty settings file if it does not exist
echo "" >> settings.tex
pdflatex printableThesis.tex
bibtex printableThesis
makeindex printableThesis
bibtex printableThesis
makeindex printableThesis
pdflatex printableThesis.tex
pdflatex printableThesis.tex
