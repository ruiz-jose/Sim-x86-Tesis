# Definir el comando de R. Cambia esto si tu comando de R está en una ubicación diferente
RSCRIPT = Rscript
# Definir el archivo principal de RMarkdown
MAIN_RMD = index.Rmd
# Objetivo para generar el libro
book:
	$(RSCRIPT) -e "bookdown::render_book()"

# Objetivo para limpiar los archivos generados
clean:
	rm -rf _bookdown_files
	rm -rf docs

.PHONY: all book clean