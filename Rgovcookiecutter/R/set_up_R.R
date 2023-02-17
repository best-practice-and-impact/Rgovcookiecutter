#Before this set up folder structure where we have top level and package folder already existing
## name folder you are going into correctly

In the console



setwd("YOUR_DIRECTORY")
install.packages("usethis")
usethis::create_package(getwd())

In the terminal
git init
pre-commit install

#git add .
#git commit -m " "

create_package <- function(directory, package_name){

  setwd(directory)
  dir.create(package_name)
  setwd(package_name)
  install.packages("usethis")
  usethis::create_package(getwd())
  dir.create("tests")


}



