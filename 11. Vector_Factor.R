# c

c1 <- c(1, 2, 3)
c2 <- c(c1, 4, 5, 6)
c3 <- append(c1, c(4, 5, 6))
c4 <- append(c1, c(4, 5, 6), after=1)

c5 <- c("a", "b", "c")
names(c1) <- c5
c1
c6 <- c(a=1, b=2, c=3)
c6
length(c6)
nchar(c6)

c7 <- c(T, F, T)
sum(c7)
table(c7)

# seq, rep

s1 <- seq(10)
s2 <- seq(1, 10)
s3 <- seq(1, 10, by=2)
s4 <- seq(1, 10, length=4)

n1 <- seq(along=s1)
n2 <- seq_along(s1)
n3 <- seq(length(s1))
n4 <- seq_len(length(s1))

r1 <- rep(1, times=5)
r2 <- rep(1:3, times=2)
r3 <- rep(1:3, each=2)
r4 <- rep(1:3, each=2, times=3)
r5 <- rep(c("a", "b"), times=c(2, 3))
r6 <- rep(1:3, length=5)

rm(list=ls())

# functions

v <- 1:10

sum(v)
prod(v)
mean(v)
median(v)
var(v)
sd(v)

range(v)
diff(range(v))
min(v)
max(v)
quantile(v, .25)
quantile(v, .75)
IQR(v)

summary(v)

cumsum(v)
cumprod(v)
cummin(v)
cummax(v)

diff(v)
diff(v, lag=2)

library(dplyr)
lag(v)
lag(v, 2)
lead(v)
lead(v, 2)

v <- c(1, 2, 3, 4, NA)
sum(v)
prod(v)
mean(v)

sum(v, na.rm=T)
sum(na.omit(v))

v <- c(NA, NA, NA, NA, NA)
sum(v, na.rm=T)
prod(v, na.rm=T)
mean(v, na.rm=T)

# factor < as.factor

v <- c("M", "M", "F", "F", "M")
f <- factor(v)

summary(v)
summary(f)

f1 <- factor(v, order=T)
f2 <- factor(v, order=T, level=c("M", "F"))

f3 <- factor("a", levels = c("a", "b")) # Levels: a b
factor(f3) # Levels: a
as.factor(f3) # Levels: a b

rm(list=ls())

# Index

v <- seq(1, 10, by=2)
v[3]
v[1:3]

which(v<=5)
v[which(v<=5)]

v <- c(5,6,4)
rank(v)
order(v)

sort(v)
sort(v)[rank(v)]
sort(v, decreasing=T)

rm(list=ls())
