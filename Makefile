# Definir el shell
SHELL=/bin/bash

# Objetivo por defecto
all: pdf web serve

# Generar tesis.pdf
pdf:
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"

# Generar el sitio web con Bookdown
web:
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

# Limpiar archivos generados
clean:
	rm -rf _book
	rm -rf _bookdown_files
	rm -f tesis.pdf

# Iniciar un servidor HTTP en el directorio docs
serve:
	python -m http.server --directory docs 8000


.PHONY: all pdf web clean