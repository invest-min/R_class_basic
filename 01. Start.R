# Data, Function

cars
head(cars)
tail(cars)
help(cars)

mean
mean(cars$speed)
mean(cars$dist)
help(mean)

# Work Space

1
2
3

a <- 1
b <- 2
c <- 3

a
b
c
a; b; c

ls()
ls.str()

rm(a)
ls()

data(cars)
ls()

# Working Directory

getwd()

setwd("C:/R")
getwd()

save(b, file = "b.rda")
rm(b)
ls()

load("b.rda")
ls()

setwd("C:/R/Class/R_class_basic")
getwd()

save.image()

# Package: Install -> Library
# Library: System(Base, Recommended), User

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

search()

mean <- function(x) x+1
mean(cars$speed)
cars$speed
rm(mean)

data()

# Package: System Library_Recommended

xyplot(dist ~ speed, cars)
help(xyplot)
search()

library(lattice)
search()

xyplot(dist ~ speed, cars)

detach(package:lattice)
search()

xyplot(dist ~ speed, cars)

lattice::xyplot(dist ~ speed, cars)

data(singer)
help(singer)

library(lattice)
data(singer)
rm(singer)

detach(package:lattice)
data(singer)

data(singer, package = "lattice")
data(package = "lattice")

# Package: User Library

.libPaths()

install.packages("dplyr")
library(dplyr)
search()

ls("package:dplyr")
data(package = "dplyr")

detach(package:dplyr)
search()

install.packages("tidyverse")
library(tidyverse)
search()

detach(package:tidyverse)
search()

detach(package:dplyr)
search()

# Help

help(package = "base")
help(mean)
?mean
args(mean)
example(mean)

help(package = "lattice")
help(xyplot)
?xyplot
args(xypot)
example(xyplot)

help(package = "dplyr")
help(filter)
?filter
help(filter, package = "dplyr")

help.search("dplyr")
??dplyr

help.start()

RSiteSearch("dplyr")
# https://search.r-project.org
# https://rseek.org

rm(list=ls())
# Clear Console: Ctrl+L

q()
