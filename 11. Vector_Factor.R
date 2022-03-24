# Concatenate

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

# Sequence, Repeat

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

# Functions

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

# Index

v <- seq(1, 10, by=2)
v[3]
v[1:3]
v[c(1, 1, 5, 3)]

i <- 5:1
v[i]

v[-1]
v[-length(v)]

v[1] <- 9
v

v[6] <- 11
v

v[10] <- 11
v

v[c(7, 8, 9)] <- 10
v

v<=5
v[v<=5]

v[v %% 2 == 0]

seq_along(v)
v[seq_along(v) %% 3 == 0]

which(v<=5)
v[which(v<=5)]
which.min(v)
v[which.min(v)]
which.max(v)
v[which.max(v)]

v <- c(5,6,4)
rank(v)
order(v)

sort(v)
sort(v)[rank(v)]
sort(v, decreasing=T)

names(v) <- c("a", "b", "c")
v
v[1]
v["a"]

# Set

x <- 1:7
y <- 4:10

union(x, y)
intersect(x, y)
setdiff(x, y)
setdiff(y, x)

is.element(3, x)
is.element(3, y)
is.element(intersect(x, y), x)
is.element(setdiff(y, x), x)

# Factor

v <- c("M", "M", "F", "F", "M")
f <- factor(v)

v
f
summary(v)
summary(f)
as.numeric(f)

f <- factor(v, level=c("M", "F", "U"))
f
summary(f)
table(f)

levels(f)
levels(f) <- c("M", "F", "D")
f
nlevels(f)

factor(f)
as.factor(f)

f <- factor(v, order=T)
f
f <- factor(v, order=T, level=c("M", "F"))
f

v <- c(1, 2, 2, 1, 1)
f <- factor(v, levels=c(1, 2), labels=c("M", "F"))
f

v <- c("a", "b", "b", "c", "a", "c", "c", "c", "a", "c")
table(v)
f <- factor(v)
table(f)

library(forcats)

fct_inorder(f)
fct_infreq(f)

fct_relevel(f, "c", "b", "a")
fct_relevel(f, "c")
fct_relevel(f, "c", after=1)
fct_relevel(f, "a", after=Inf)

y <- c(1, 3, 2, 4, 4, 5, 3, 3, 6, 7)

fct_reorder(v, y) # median
fct_reorder(v, y, .fun=mean) # mean
fct_reorder(v, y, .fun=mean, .desc=T)

fct_recode(v, z="a", z="c")

rm(list=ls())
