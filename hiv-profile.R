library(tidyverse)
# using hiv-profile-template.Rmd to avoid generating images (like a github doc would make)

render_report = function(my_iso3) {
  rmarkdown::render(
    "hiv-profile-template.Rmd", params = list(
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