install.packages(c('crayon', 'pbdZMQ', 'devtools'), repos=c('http://cran.utstat.utoronto.ca'))
packageurl <- "https://cran.r-project.org/src/contrib/devtools_1.11.0.tar.gz"
install.packages(packageurl, repos=NULL, type="source")
devtools::install_github(paste0('IRkernel/', c('repr', 'IRdisplay', 'IRkernel')))
IRkernel::installspec()
