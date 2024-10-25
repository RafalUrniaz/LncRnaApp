# Clear Environment
rm(list = ls(all.names = TRUE))

# Load configuration file
config <- yaml::yaml.load_file('config.yaml')

# Additional config
config$TempProjPath <- paste0(tempdir(),"/SWTempProj/") 
config$TempProjPathTabs <- paste0(tempdir(),"/SWTempProj/tabs/") 

# Package names
packages <- c("devtools", "shiny", "shinythemes", "shinydashboard", "shinyjs", "yaml", "readr", "stringr", "shinyWidgets", "bslib", "shinytest2")

# Try loading packages
installedPackages <- find.package(packages)

# Install packages not yet installed
if (!(length(installedPackages) == length(packages))){
  install.packages(packages)
}

# Packages loading
invisible(lapply(packages, library, character.only = TRUE))

# ShinyWizard
library("ShinyWizard")