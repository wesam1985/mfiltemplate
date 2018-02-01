#' mFiL abstract format.
#'
#' Format for creating an abstract for submission to mFiL.
#'
#' @param ... Optional arguments to be passed to \code{rmarkdown::pdf_document()}.
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("My-abstract.Rmd", template = "mfil_abstract", package = "mfiltemplate")
#' }
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
