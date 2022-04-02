# Apply

(m <- matrix(1:20, 4))
apply(m, 1, max)
apply(m, 2, min)

(a <- array(1:24, c(3, 4, 2)))
apply(a, 1, paste, collapse=",")
apply(a, 2, paste, collapse=",")
apply(a, c(1, 2), paste, collapse=",")
apply(a, 3, paste, collapse=",")

# Lapply, Sapply

(l <- list(x=1:10, y=11:18, z=21:29))
lapply(l, length)
unlist(lapply(l, length))
sapply(l, length)

lapply(l, mean)
lapply(l, sd)
lapply(l, range)

sapply(l, mean)
sapply(l, sd)
sapply(l, range)

(df <- data.frame(x=1:10, y=11:18, z=21:29))
(df <- data.frame(x=1:10, y=11:20, z=21:30))
lapply(df, length)
sapply(df, length)

lapply(df, mean)
lapply(df, sd)
lapply(df, range)

sapply(df, mean)
sapply(df, sd)
sapply(df, range)

# Mapply

x <- 1:10
y <- 11:20

mapply(sum, x, y)

# Tapply, Aggregate, By

(df <- data.frame(df, a=c(1,1,1,1,1,0,0,0,0,0)))
with(df, tapply(y, a, mean))

(df <- data.frame(df, b=c(1,0,1,0,1,0,1,0,1,0)))
with(df, tapply(y, list(x=a, y=b), mean))

with(df, aggregate(y, list(x=a, y=b), mean))

by(df, df$a, summary)

table(df$a)
table(df$a, df$b)

table(cut(df$y, 3))

rm(list=ls())
