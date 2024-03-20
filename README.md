
# Rgovcookiecutter

<!-- badges: start -->
<!-- badges: end -->

The goal of Rgovcookiecutter is to set up a new repository for an R package following best practice by running a single function. This includes a unit testing folder, continuous integration through github actions, and .gitignore pre-configured to not include sensitive data.

## Installation

You can install the development version of Rgovcookiecutter from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("best-practice-and-impact/Rgovcookiecutter")
```

## Example

This is a basic example which shows you how to use the package:

``` r
library(Rgovcookiecutter)

create_package("D:\repos", "repo_name")

```
