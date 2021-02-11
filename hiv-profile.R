library(tidyverse)

render_report = function(my_iso3) {
  rmarkdown::render(
    "hiv-profile.Rmd", params = list(
      my_iso3 = my_iso3
    ),
    output_file = glue('Report-{my_iso3}.html'), 
    output_dir = 'reports'
  )
}

masterdata <- read_csv("./data/hiv_rates.csv") %>%
  distinct(iso3) %>%
  pull(iso3) %>%
  map(render_report)
#map character
#ask about rendering all these docs to a single folder

#https://www.r-bloggers.com/2019/03/using-parameters-in-rmarkdown/
#https://www.coursera.org/lecture/reproducible-templates-analysis/adding-parameters-in-a-document-template-6fQwc

#https://github.com/rstudio/rmarkdown/issues/587

#https://bookdown.org/yihui/rmarkdown/params-knit.html
#https://stackoverflow.com/questions/54969070/rendering-multiple-parametrized-rmarkdown-files-by-render-function-fails