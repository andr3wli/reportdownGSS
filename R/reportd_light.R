#' Creates a light theme for GSS reports in the form of a RMarkdown file.
#'
#' @param ... Arguments passed on to pagedown::html_paged
#'
#' @return Pagedown template that was designed for creating reports for the Graduate Student Society at UBC.
#' @export

reportd_light <- function(...) {

  # CSS
  css_template <- pkg_resource("css/gss_light.css")
  html_template <- pkg_resource("html/template_reportdown.html")

  # template
  pagedown::html_paged(
    css = css_template,
    template = html_template
  )
}
