FILES = 0*.md* metadata.yaml
PANDOC = pandoc -s --filter pandoc-citeproc 
CSS =screen.css
OUTFN = public-geographer

html: ${FILES} Makefile 
	${PANDOC} -s -t html5 --section-divs -c ${CSS} -o out/${OUTFN}.html ${FILES}

odt: ${FILES} Makefile
	${PANDOC} -s -t odt -o out/${OUTFN}.odt ${FILES}

docx: ${FILES} Makefile
	${PANDOC} -s -t docx -o out/${OUTFN}.docx ${FILES}

all: html odt docx

