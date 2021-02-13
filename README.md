# Homework 05: Debugging & generating R Markdown documents (Julia Du)

Detailed instructions for this homework assignment are [here](https://cfss.uchicago.edu/homework/debugging-rmarkdown/).

## Executing the files

The [baby names script](babynames.R) is fixed.

The [hiv-profile.Rmd](hiv-profile.Rmd) is a parameterized R Markdown file that lets me generate a **markdown** report for any country in the HIV dataset. Given my parameter value is just Kenya in the .Rmd, this means simply knitting the .Rmd alone will produce [Kenya's markdown report](hiv-profile.md).

I then wrote a [R script](hiv-profile.R) to iterate this .Rmd, so that when I run the R script, I will automatically produce a **html** report for every country in the HIV dataset. However, just using the aforementioned hiv-profile.Rmd in my R script will also give me the output files of a **markdown** file when I run the script; that is, running the script will give me both a html report & markdown output for each country.

To solely produce html files with my R script, I created a copy of my parameterized .Rmd file and simply changed the YAML output to **html_document**. I used this [template .Rmd file](hiv-profile-template.Rmd) in my R script, thus successfully generating [html reports of all countries](./reports). 

Note: These html reports cannot be viewed in Github alone since [they exceed 1 MB](https://stackoverflow.com/questions/48054238/error-github-can-t-show-files-that-are-this-big-right-now-but-the-file-is-onl).

## Required packages

You should have the following packages installed:

```r

library(tidyverse)
library(babynames)
library(glue)
library(RColorBrewer)
library(countrycode)

```
