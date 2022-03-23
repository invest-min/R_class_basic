# Data Structure: Vector, Matrix, Arrary, Dataframe, List

1
1:6
c(1, 2, 3, 4, 5, 6)
c("a", "b", "c", "d", "e", "f")
c(T, F, T, T, F, F)

matrix(c(1, 2, 3, 4, 5, 6), 2)
matrix(c("a", "b", "c", "d", "e", "f"), 2)
matrix(c(T, F, T, T, F, F), 2)
matrix(c(1, 2, 3, "d", "e", "f"), 2)

array(1:12, 2)
array(1:12, c(2, 3))
array(1:12, c(2, 3, 2))

data.frame(c(1, 2, 3), c("d", "e", "f"))
data.frame(x=c(1, 2, 3), y=c("d", "e", "f"))

list(1, "a", T)
list(1:6, matrix(1:6, 2), array(1:12, c(1, 3, 2)))
list(data.frame(x=c(1, 2, 3), y=c("d", "e", "f")), list(1, "a", T))

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

class(1)
as.integer(1)
class(as.integer(1))
mode(as.integer(1))

class("a")
as.character(1)
class(as.character(1))
mode(as.character(1))

as.factor("a")
as.integer(as.factor("a"))
as.numeric(as.factor("a"))
class(as.factor("a"))
mode(as.factor("a"))

class("1970-01-01")
as.Date("1970-01-01")
as.integer(as.Date("1970-01-01"))
as.integer(as.Date("1970-01-02"))
class(as.Date("1970-01-01"))
mode(as.Date("1970-01-01"))

class(T)
as.integer(T)
class(as.integer(T))
mode(as.integer(T))

class(lm)
lm(dist ~ speed, cars)
class(lm(dist ~ speed, cars))
mode(lm(dist ~ speed, cars))
