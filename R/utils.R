#' Internal function to be used for accessing the CSS/HTML
#'

pkg_resource <- function(...) {
  system.file("resources", ..., package = "reportdownGSS", mustWork = TRUE)
}
