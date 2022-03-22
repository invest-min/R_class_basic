# Working Directory

getwd()
setwd("C:/R")

# Environment

a <- 1
b <- 2
c <- 3

ls()
ls.str()

rm(a)
ls()

save(b, file = "b.rda")
rm(b)
load("b.rda")
ls()

rm(list=ls()) #Console: Ctrl+L
ls()

# Package: System Library_Base

library()
Sys.getlocale()
Sys.setlocale("LC_ALL", "English")
library()
Sys.setlocale()

installed.packages()
colnames(installed.packages())

search()

help(package = "base")
library(help = base)

ls("package:base")
data(package = "base")

ls("package:datasets")
data(package = "datasets")

help(mean)
x <- c(1, 2, 3)
mean(x)

mean <- function(x) x+1
mean(x)
rm(mean)

search()

data()
data(package = .packages(all.available = TRUE))

data(cars)
help(cars)
rm(cars)

head(cars)
tail(cars)
str(cars)

# Package: System Library_Recommended

xyplot(dist ~ speed, data = cars)
help(xyplot)
search()

library(lattice)
search()
xyplot(dist ~ speed, data = cars)

detach(package:lattice)
xyplot(dist ~ speed, data = cars)

lattice::xyplot(dist ~ speed, data = cars)

data(singer)
help(singer)

data(package = "lattice")
data(singer, package = "lattice")
rm(singer)

library(lattice)
data(singer)
rm(singer)
detach(package:lattice)

# Package: User Library

.libPaths()

search()
install.packages("tidyverse")
library(tidyverse)
search()

ls("package:tidyverse")
data(package = "tidyverse")

ls("package:dplyr")
data(package = "dplyr")

detach(package:tidyverse)
search()

# Save and Quit

rm(list=ls())
save.image()
q()
