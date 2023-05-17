install.packages("remotes")

remotes::install_github("best-practice-and-impact/Rgovcookiecutter/Rgovcookiecutter", force = TRUE)


project_location = "D:/repos/Rgovcookie_test_repos"
project_name = "test-package"
github_repo = 'https://github.com/best-practice-and-impact/Rgovcookiecutter/archive/refs/heads/main.zip'


Rgovcookiecutter::create_package("D:/repos/Rgovcookie_test_repos", project_name)
