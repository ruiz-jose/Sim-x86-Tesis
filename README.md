# Generar tesis con R interactivo

# Actualizar lista de paquetes
sudo apt-get update

# Instalar dependencias del sistema
sudo apt-get install r-base-core
sudo apt-get install pandoc 
pandoc --version
pandoc 2.19.2
sudo apt-get install libxml2-dev

# Abrir R y ejecutar comandos para instalar paquetes de R
install.packages("bookdown")
tinytex::install_tinytex()
install.packages("lintr")
install.packages("xml2")
install.packages("kableExtra")

# Renderizar el libro
make


