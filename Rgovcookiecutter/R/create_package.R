

#Install_precommit_hooks <- function(){
#
#  system2("pre-commit install")
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

create_package <- function(project_location, project_name, package_name = NA,  github_repo = 'https://github.com/best-practice-and-impact/Rgovcookiecutter/archive/refs/heads/main.zip'){


  if(is.na(package_name)) {
    package_name = clean_string(project_name)
  }
  
  setwd(project_location)
  usethis::use_zip(github_repo, destdir = project_location, cleanup = TRUE)
  file.rename("Rgovcookiecutter-main", project_name)
  setwd(project_name)
  file.rename("Rgovcookiecutter", package_name)
  file.remove(paste0(getwd(), "/", package_name, "/R/create_package.R" ))

  usethis::create_project(getwd())
  gert::git_init()

  #run git init set up
  #run install precommit
  #Add a param for do you have python installed if so then do commit hooks

}


