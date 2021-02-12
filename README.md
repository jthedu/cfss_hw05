# Homework 05: Debugging & generating R Markdown documents (Julia Du)

Here is my [baby names script](babynames.R).
Here also is my [HIV profile source code](hiv-profile.Rmd) & my [rendered report for a single country, based soely on the RMarkdown](hiv-profile.md).
Finally, here is my individual country HIV profile [R script](hiv-profile.R) & my [rendered HTML files](./reports).

Detailed instructions for this homework assignment are [here](https://cfss.uchicago.edu/homework/debugging-rmarkdown/).

## Required packages

You should have the following packages installed:

```r

library(tidyverse)
library(babynames)
library(glue)
library(RColorBrewer)
library(countrycode)
library(forcats)
library(readr)
library(knitr)

```
