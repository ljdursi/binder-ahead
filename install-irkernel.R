install.packages(c('crayon', 'pbdZMQ', 'devtools', 'Cairo'), repos=c('http://cran.utstat.utoronto.ca')
devtools::install_github(paste0('IRkernel/', c('repr', 'IRdisplay', 'IRkernel')))
IRkernel::installspec()
