# Environment

a <- 1
b <- 2
c <- 3

ls()
rm(a)
ls()
rm(list=ls()) #Console -> Ctrl+L
ls()

# Package

install.packages("tidyverse")
library(tidyverse)
search()

help(sum)
help(package = "tidyverse")
library(help = tidyverse)

ls("package:tidyverse")
data(package = "tidyverse")

detach(package:tidyverse)
search()
