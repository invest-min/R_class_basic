# Matrix

(m1 <- matrix(1:12, nrow=4))
(m2 <- matrix(1:12, nrow=4, byrow=T))
(m3 <- cbind(m1, m2))
(m4 <- rbind(m1, m2))

(matrix(0, 4, 3))

(df <- data.frame(x=1:4, y=5:8, z=9:12))
(mdf <- as.matrix(df))

v1 <- c(11, 12, 13, 14)
v2 <- c(21, 22, 23, 24)
v3 <- c(31, 32, 33, 34)

(cbind(v1, v2, v3))
(cbind(v1, v1, v1))
(cbind(m1, v1))
(cbind(mdf, v1))
(cbind(mdf, m1))

# Dimension, Index

m <- 1:12
dim(m) <- c(3, 4)

dim(m)
dim(m)[1]
dim(m)[2]
nrow(m)
ncol(m)
length(m)
str(m)

m[1,] # Vector
m[1,, drop=F] # Matrix
m[1:2,]
m[c(1, 3),]
m[-1,]

m[,1] # Vector
m[,1, drop=F] # Matrix
m[, 1:2]
m[, c(1, 3)]
m[, -1]

m[1, 1]
m[1, 1] <- 111
m

rownames(m) <- c("a", "b", "c")
colnames(m) <- c("w", "x", "y", "z")
m

(matrix(1:12, 3,
        dimnames=list(c("a", "b", "c"),
                      c("w", "x", "y", "z"))))

# Functions

(m1 <- matrix(1:9, nrow=3))
(m2 <- matrix(1:9, nrow=3, byrow=T))

m1 + 10
m1 - 10
m1 * 10
m1 / 10

m1 + m2
m1 - m2
m1 * m2
m1 / m2

m1 %*% m2

(m <- matrix(c(1,5,3,2), nrow=2))

rowSums(m)
colSums(m)
rowMeans(m)
colMeans(m)

t(m)
t(1:5) # 1:5 is a column
t(m[1,])

solve(m)
solve(m, c(3, 2))

eigen(m)

diag(m)

diag(c(1, 2))
diag(2)

rm(list=ls())

# Array

(a <- array(1:24, c(3, 4, 2)))

a <- 1:24
dim(a) <- c(3, 4, 2)
a
dim(a)
str(a)

a[,,1]
a[1,,1]
a[, 1, 1]
a[1, 1, 1]
a[1, 1, 1, drop=F]
