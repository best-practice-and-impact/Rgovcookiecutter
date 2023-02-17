#Before this set up folder structure where we have top level and package folder already existing
## name folder you are going into correctly

In the console
setwd("YOUR_DIRECTORY")
install.packages("usethis")
usethis::create_package(getwd())

In the terminal
git init 
pre-commit install

git add . 
git commit -m " "



