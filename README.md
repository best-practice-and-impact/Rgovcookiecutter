# Rgovcookiecutter

<!-- badges: start -->

<!-- badges: end -->

Rgovcookiecutter 

An R package to easily set up a standardised project structure for data science projects in R, following best practice. 

Rgovcookiecutter creates a new R project repository with everything you need to build an R package. The repository helps users to follow [quality assurance best practice](https://best-practice-and-impact.github.io/qa-of-code-guidance/intro.html) and includes a tests directory, continuous integration through github actions, and .gitignore pre-configured to reduce the risk of sensitive data being committed.


## Installation

You can install the development version of Rgovcookiecutter from [GitHub](https://github.com/) with:

``` r
install.packages("devtools")

devtools::install_github("best-practice-and-impact/Rgovcookiecutter")

```

## Example

This is a basic example of how to set up a new repository using Rgovcookiecutter:

``` r
library(Rgovcookiecutter)

create_package("<filepath>", "<repo-name>")

```
## Project structure

The basic project structure looks like:

```
|--.github/
|   --workflows/      <- GitHub actions workflows
|--man/
|--R/                 <- R code
|--tests/
|   --testthat/       <- unit tests
|   --testthat.R
|--.gitignore
|--DESCRIPTION        <- package information
|--LICENSE
|--NAMESPACE      
|--README.md          <- project information
|--.Rproj

```

## Contributing 

Rgovcookiecutter is currently in development and we welcome feedback, suggestions and contributions from users. If you have spotted a bug, or would like to see a new feature, please raise an [issue](https://github.com/best-practice-and-impact/Rgovcookiecutter/issues).