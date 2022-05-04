# Structure: Vector, Matrix, Array, List, Dataframe

1
1:6
c(1, 2, 3, 4, 5, 6)
c("a", "b", "c", "d", "e", "f")
c(T, F, T, T, F, F)
c(1, 2, 3, "d", "e", "f")
str(c(1, 2, 3, 4, 5, 6))

matrix(c(1, 2, 3, 4, 5, 6), 2)
matrix(c("a", "b", "c", "d", "e", "f"), 3)
matrix(c(T, F, T, T, F, F), 2)
matrix(c(1, 2, 3, "d", "e", "f"), 3)
str(matrix(c("a", "b", "c", "d", "e", "f"), 3))

array(1:12, c(2, 3, 2))
str(array(1:12, c(2, 3, 2)))

list(matrix(1:6, 2), matrix(7:12, 2))
list(1, "a", T)
list(1:6, matrix(1:6, 2), array(1:12, c(1, 3, 2)))
str(list(1:6, matrix(1:6, 2), array(1:12, c(1, 3, 2))))

data.frame(c(1, 2, 3), c("d", "e", "f"))
data.frame(x=c(1, 2, 3), y=c("d", "e", "f"))
str(data.frame(x=c(1, 2, 3), y=c("d", "e", "f")))

# Transformation

(v <- 1:6)
is.vector(v)

as.matrix(v)
cbind(v)
rbind(v)
matrix(v, 2)

as.list(v)
list(v)

as.data.frame(v)
as.data.frame(rbind(v))
as.data.frame(matrix(v, 2))

(m <- matrix(v, 2))
is.matrix(m)

as.vector(m)
as.list(m)
as.data.frame(m)

(l <- list(1:3, 4:6))
is.list(l)

as.vector(l)
unlist(l)

matrix(l)
matrix(unlist(l), 2)

as.data.frame(l)

(df <- data.frame(x=1:3, y=4:6))
is.data.frame(df)

str(df)
str(df[,1])
str(df[1,])

as.vector(df)
as.vector(as.matrix(df))

as.list(df)

# Mode: numeric, character, logical, list, function

mode(1)
mode("a")
mode(T)
mode(c(1, "a", T))

mode(1:6)
mode(matrix(1:6, 2))
mode(array(1:12, c(2, 3, 2)))

mode(data.frame(1:3, 4:6))
mode(list(1, "a", T))

mode(mean)

# Class: numeric, integer, character, factor, Date, logical, lm...

mode(1)
class(1)
mode(as.integer(1))
class(as.integer(1))

mode(as.character(1))
class(as.character(1))

mode("a")
class("a")
mode(as.factor("a"))
class(as.factor("a"))

mode("1970-01-01")
class("1970-01-01")
mode(as.Date("1970-01-01"))
class(as.Date("1970-01-01"))

mode(T)
class(T)
mode(as.integer(T))
class(as.integer(T))

lm(dist ~ speed, cars)

mode(lm)
class(lm)
mode(lm(dist ~ speed, cars))
class(lm(dist ~ speed, cars))

rm(list=ls())
