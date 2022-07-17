#' Internal function to be used in the reportdownGSS package - used to access the CSS and HTML files within the reportdownGSS package.
#'
#' @param ... Character vector specifying the files within the reportdownGSS package.
#'
#' @return Returns the file paths in resources if it exists.
pkg_resource <- function(...) {
  system.file("resources", ..., package = "reportdownGSS", mustWork = TRUE)
}
