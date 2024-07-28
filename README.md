# Generar tesis con R interactivo
apt install r-base-core
install.packages("bookdown")
sudo apt-get install pandoc
tinytex::install_tinytex()
bookdown::render_book()
