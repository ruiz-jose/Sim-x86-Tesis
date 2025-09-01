# Copilot Instructions for Sim-x86-Tesis

## Project Overview
This repository contains the source for a thesis generated using R Markdown and Bookdown, focused on simulating and documenting x86 architecture concepts. The project is structured for reproducible builds and academic writing, with custom LaTeX templates and extensive use of R for data, tables, and graphics.

## Key Components
- **R Markdown Chapters**: Files like `01-intro.Rmd`, `02-arquitectura.Rmd`, etc. Each chapter is a standalone Rmd file, rendered together via Bookdown.
- **Custom Templates**: LaTeX templates in `templates/` (e.g., `template_thesisdown.tex`, `unerthesis.cls`) define thesis formatting and style.
- **Images and Figures**: All images are stored in `images/` and referenced in Rmd files using `knitr::include_graphics()`.
- **Bibliography**: References managed in `tesis.bib` and cited using R Markdown's citation syntax (`@refkey`).
- **Tables**: Tables are generated with `kable` and `kableExtra`, often with custom styling for both HTML and PDF outputs.

## Build and Workflow
- **Dependencies**: R (>=4.4.2), Bookdown, TinyTeX, Pandoc, and several R packages (`knitr`, `rmarkdown`, `kableExtra`, etc.). See `README.md` for installation commands.
- **Build Command**: Use `make` or run `bookdown::render_book('index.Rmd', 'bookdown::pdf_book')` in R to generate the thesis PDF.
- **System Setup**: On Linux, install system dependencies as shown in `README.md`. On Windows, ensure R and required packages are installed.
- **Images**: Add new images to `images/` and reference them with relative paths in Rmd files.
- **Tables**: Use `kable`/`kableExtra` with conditional formatting for LaTeX and HTML. See examples in chapter files.

## Conventions and Patterns
- **Chunk Naming**: R code chunks are named for traceability (e.g., `{r tablaevolucionx86, ...}`).
- **Conditional Output**: Use `knitr::is_latex_output()` to style tables/figures differently for PDF vs HTML.
- **Footnotes**: Use `^[text]` for inline footnotes in Rmd.
- **Citations**: Use `@refkey` for references, managed in `tesis.bib`.
- **Custom LaTeX**: For advanced formatting, edit `templates/template_thesisdown.tex` and `templates/unerthesis.cls`.

## Examples
- **Table with Conditional Formatting**:
  ```r
  kable(tabla, format = ifelse(knitr::is_latex_output(), "latex", "html"), ...)
  ```
- **Image Inclusion**:
  ```r
  knitr::include_graphics("images/editor.png")
  ```
- **Citation**:
  ```markdown
  ... como se muestra en [@patterson_computer_2014].
  ```

## External Integration
- No external APIs or services are called; all dependencies are local R packages and system tools.
- PDF output uses TinyTeX and custom LaTeX templates for academic formatting.

## Troubleshooting
- If build fails, check package versions and system dependencies (see `README.md`).
- For merge conflicts with images or binary files, move or remove the local file before pulling.
- For credential issues with Git, update or reset your credential helper.

---
For questions about project structure or build issues, see `README.md` or the templates in `templates/`.
