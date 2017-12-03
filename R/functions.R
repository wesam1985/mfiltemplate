#' mFiL abstract format.
#'
#' Format for creating an abstract for submission to mFiL.
#'
#' @export
mfil_abstract <- function(...) {

mfil_template <- system.file("rmarkdown/templates/mfil_abstract/resources", "template.tex", package = "mfiltemplate")

    rmarkdown::pdf_document(
        ...,
        keep_tex = TRUE,
        template = mfil_template,
        latex_engine = "xelatex"
    )
}
