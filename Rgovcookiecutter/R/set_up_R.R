create_package <- function(directory, package_name){

  setwd(directory)
  dir.create(package_name)
  setwd(package_name)
  install.packages("usethis")
  usethis::create_tidy_package(getwd())
  dir.create("tests")
  setwd("tests")
  dir.create("testthat")
  setwd(directory)
  usethis::use_readme_md()
  usethis::use_git()
  copy_docs_folder(directory)


}



copy_docs_folder <- function(directory){

  usethis::use_github_file(
    "best-practice-and-impact/Rgovcookiecutter",
    path = "best-practice-and-impact/Rgovcookiecutter",
    save_as = NULL,
  )

  file.copy(paste0(getwd(),"/docs"), directory,recursive=TRUE)
  file.copy(paste0(getwd(),"/.pre-commit-config.yaml"), directory)
}

#Install_precommit_hooks <- function(){
#
#  system("pre-commit install")
#}


#usethis::use_course('https://github.com/cwickham/purrr-tutorial/archive/master.zip')



create_package <- function(project_location, package_name, github_rep = 'https://github.com/best-practice-and-impact/Rgovcookiecutter/archive/refs/heads/main.zip'){

  setwd(project_location)

  usethis::use_zip(github_repo, destdir = project_location)

  file.rename("Rgovcookiecutter-main" ,package_name)
  usethis::use_git()

  #delete set_up.R file
  #run git init set up
  #run install precommit

}


