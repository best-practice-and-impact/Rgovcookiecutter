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
