#' Creates a dark theme, green and blue as main colors in the form of a RMarkdown file
#'
#' @param ... Arguments passed on to pagedown::html_paged
#'
#' @return Pagedown dark theme template that was designed for creating reports for the Graduate Student Society at UBC.
#' @export

reportd_darkblue <- function(...) {

  # CSS
  css_template <- pkg_resource("css/gss_darkblue.css")
  html_template <- pkg_resource("html/template_reportdown.html")

  # template
  pagedown::html_paged(
    css = css_template,
    template = html_template
  )
}
