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
installedPackages <- basename(find.package(packages))

# # Differences installed vs not
# installedPackagesDiff <- setdiff(packages, installedPackages)
# 
# stop("These packages must be installed: ", installedPackagesDiff)
# 
# Install packages not yet installed
#install.packages(installedPackagesDiff, verbose = FALSE, quiet = TRUE)

# Packages loading
invisible(lapply(packages, library, character.only = TRUE))

# ShinyWizard
library("ShinyWizard")