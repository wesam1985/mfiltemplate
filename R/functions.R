#' mFiL abstract format.
#'
#' Format for creating an abstract for submission to mFiL.
#'
#' @export
mfil_abstract <- function(...) {
    rmarkdown::pdf_document(
        ...,
        template = system.file("rmarkdown/templates/mfil_abstract/resources", "template.tex", package = "mfiltemplate"),
        latex_engine = "xelatex"
    )
}
