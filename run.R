#' This script executes both resume.Rmd and cv.Rmd to generate the html document
#' and generate the pdf from these html

rmarkdown::render(input = "cv.Rmd", output_file = "cv.html")
rmarkdown::render(input = "resume.Rmd", output_file = "resume.html")
pagedown::chrome_print(input = "cv.html") # pdf
pagedown::chrome_print(input = "resume.html") # pdf
