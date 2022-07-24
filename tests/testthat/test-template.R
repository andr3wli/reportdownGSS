# inspired by mitchell O'Hara-Wild vitae package : https://github.com/mitchelloharawild/vitae/blob/master/tests/testthat/test-template.R

expect_knit <- function(template){
  expect_output(
    expect_message(
      rmarkdown::render(
        system.file("rmarkdown", "templates", template, "skeleton", "skeleton.Rmd", package = "reportdownGSS"),
        output_file = sprintf("%s-test", template),
        output_dir = file.path(getwd(), "rendered")),
      "Output created"),
    "pandoc")
}

# tests
test_that("report_light", {
  expect_knit("report_light")
})

test_that("report_darkblue", {
  expect_knit("report_darkblue")
})

test_that("report_light_v2", {
  expect_knit("report_light_v2")
})

test_that("report_darkpink", {
  expect_knit("report_darkpink")
})
