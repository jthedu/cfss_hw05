render_report = function(my_iso3) {
  rmarkdown::render(
    "hiv-profile.Rmd", params = list(
      my_iso3 = my_iso3
    ),
    output_file = paste0("Report-", my_iso3, ".html")
  )
}

masterdata <- list.files(path = "./data/", pattern = "\\.csv$") %>% #could also write "*.csv"
  map(render_report)

#ask about rendering all these docs to a single folder

#https://www.r-bloggers.com/2019/03/using-parameters-in-rmarkdown/
#https://www.coursera.org/lecture/reproducible-templates-analysis/adding-parameters-in-a-document-template-6fQwc

#https://bookdown.org/yihui/rmarkdown/params-knit.html
#https://stackoverflow.com/questions/54969070/rendering-multiple-parametrized-rmarkdown-files-by-render-function-fails