create_package <- function(directory, package_name){

  setwd(directory)
  dir.create(package_name)
  setwd(package_name)
  install.packages("usethis")
  usethis::create_package(getwd())
  dir.create("tests")
  setwd("tests")
  dir.create("testthat")
  setwd(directory)
  usethis::use_readme_md()
  usethis::use_git()


}



copy_docs_folder <- function(directory){

  file.copy(paste0(getwd(),"/docs"), directory,recursive=TRUE)
  file.copy(paste0(getwd(),"/.pre-commit-config.yaml"), directory)
}

Install_precommit_hooks function(){

  system("pre-commit install")
}



