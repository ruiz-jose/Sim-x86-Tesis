# Generar tesis con R interactivo

# Actualizar lista de paquetes
sudo apt-get update

# Instalar dependencias del sistema
sudo apt-get install r-base-core
R --version
R version 4.4.2 (2024-10-31) -- "Pile of Leaves"
sudo apt-get install pandoc 
pandoc --version
pandoc 3.1.6

# Abrir R y ejecutar comandos para instalar paquetes de R
install.packages('bookdown')
cat("Versión de bookdown: ", as.character(packageVersion("bookdown")), "\n")
Versión de bookdown:  0.41 
tinytex::install_tinytex()
cat("Versión de tinytex: ", as.character(packageVersion("tinytex")), "\n")
Versión de tinytex:  0.54 
install.packages("lintr")
cat("Versión de lintr: ", as.character(packageVersion("lintr")), "\n")
Versión de lintr:  3.1.2
install.packages("knitr")
cat("Versión de knitr: ", as.character(packageVersion("knitr")), "\n")
Versión de knitr:  1.49  
install.packages("rmarkdown")
cat("Versión de rmarkdown: ", as.character(packageVersion("rmarkdown")), "\n")
Versión de rmarkdown:  2.29
install.packages("xml2")
cat("Versión de xml2: ", as.character(packageVersion("xml2")), "\n")
Versión de xml2:  1.3.6 
install.packages("kableExtra")
cat("Versión de kableExtra: ", as.character(packageVersion("kableExtra")), "\n")
Versión de kableExtra:  1.4.0 

# Renderizar el libro
make


