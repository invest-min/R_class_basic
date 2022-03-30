# From Vector

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

# From Matrix

(m <- matrix(v, 2))
is.matrix(m)

as.vector(m)
as.list(m)
as.data.frame(m)

# From List

(l <- list(1:3, 4:6))
is.list(l)

as.vector(l)
unlist(l)

matrix(l)
matrix(unlist(l), 2)

as.data.frame(l)

# From Databrame

(df <- data.frame(x=1:3, y=4:6))
is.data.frame(df)

str(df[,1])
str(df[1,])

as.vector(df)
as.vector(as.matrix(df))

as.list(df)

rm(list=ls())
