#' Function for the light theme for GSS reports
#'
#' @param ...
#'
#' @return a pagedown template
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
