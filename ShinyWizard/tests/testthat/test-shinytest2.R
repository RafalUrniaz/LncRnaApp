library(shinytest2)

test_that("{shinytest2} recording: source", {
  app <- AppDriver$new(app_dir = paste0(base::system.file("", package = "ShinyWizard"), "inst/source/"), name = "source", height = 731, width = 1139)
  app$click("NavBar-go_1_2")
  app$set_inputs(`NavBar-tabs` = "tab4")
  app$set_window_size(width = 1139, height = 731)
  app$expect_download("tab4-DownloadShinyWizardZIP")
})
