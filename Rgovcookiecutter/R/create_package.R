

#Install_precommit_hooks <- function(){
#
#  system("pre-commit install")
#}


#' @title Cleans strings 
#' 
#' @description Removes hyphens, underscores and spaces and makes string lower case 
#' 
#' @param string the string to be made clean 
#' 
#' @return clean string 

clean_string <- function(string) {
  
  return(gsub('[^[:alnum:].]','', tolower(string)))
  
}

#' @title Create project structure
#'
#' @description copy package structure and all accompanying documents, initialises git
#'
#' @param project_location the directory of where to set up the porject
#' @param package_name Name of the package
#' @param github_repo
#'
#' @return NULL
#' @export

create_package <- function(project_location, project_name, package_name = NULL,  github_repo = 'https://github.com/best-practice-and-impact/Rgovcookiecutter/archive/refs/heads/main.zip'){

  #add a bit where if you don't add another project name it just uses package name?
  #ADD limits on package_name to fit with packagename requirments (no spaces etc)

  if package_name = NULL {
    package_name = clean_string(project_name)
  }
  
  setwd(project_location)
  usethis::use_zip(github_repo, destdir = project_location, cleanup = TRUE)
  file.rename("Rgovcookiecutter-main" ,project_name)
  setwd(package_name)
  file.rename("Rgovcookiecutter" ,package_name)

  usethis::create_project(getwd())
  usethis::use_git()

  #delete set_up.R file
  #run git init set up
  #run install precommit

}



gsub('[^[:punct:][:space:].]','',"string.---")

gsub('[^[:alnum:].]','',"stri1ng.-@@@~##:--")

