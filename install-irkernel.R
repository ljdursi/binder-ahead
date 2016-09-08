install.packages(c('crayon', 'pbdZMQ', 'devtools'), repos=c('http://cran.utstat.utoronto.ca'))
library(devtools)
devtools::install_github(paste0('IRkernel/', c('repr', 'IRdisplay', 'IRkernel')))
IRkernel::installspec()
