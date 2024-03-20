#' Create package
#'
#' @param directory string. Folder directory where repositories are stored.
#' @param package_name string. Name of package to be created.
#'
#' @export
create_package <- function(directory, package_name){

  path <- file.path(directory, package_name)
  usethis::create_package(path)

  usethis::with_project(path, {

    usethis::use_readme_md()

    usethis::use_mit_license(copyright_holder = "Crown copyright")

    usethis::use_package_doc()

    devtools::document()

    usethis::use_testthat(3)

    ignores <- c(".Rproj.user",
                 ".Rhistory",
                 ".RData",
                 ".Ruserdata"
    )
    usethis::use_git_ignore(ignores, directory = ".")

    gert::git_init()

    # install.packages("reticulate")
    #
    # reticulate::conda_create("r-precommit", forge = FALSE, pip = TRUE)
    # reticulate::conda_install("r-precommit", "pre-commit", forge = FALSE, pip = TRUE)
    #
    # install.packages("precommit")
    #
    # precommit::use_precommit() # May have to copy and paste sqlite3.dll

    usethis::use_github_action("check-standard")

  })

}
