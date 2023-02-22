

#Install_precommit_hooks <- function(){
#
#  system("pre-commit install")
#}



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

create_package <- function(project_location, package_name, github_repo = 'https://github.com/best-practice-and-impact/Rgovcookiecutter/archive/refs/heads/main.zip'){

  #add a bit where if you don't add another project name it just uses package name?
  #ADD limits on package_name to fit with packagename requirments (no spaces etc)


  setwd(project_location)
  #Change name of package as well as project
  usethis::use_zip(github_repo, destdir = project_location)

  file.rename("Rgovcookiecutter-main" ,package_name)
  usethis::use_git()

  #delete set_up.R file
  #run git init set up
  #run install precommit

}


