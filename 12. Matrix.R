# matrix, as.matrix

(m1 <- matrix(1:12, nrow=3))
(m2 <- matrix(1:12, nrow=3, byrow=T))
(m3 <- cbind(m1, m2))
(m4 <- rbind(m1, m2))

(matrix(1:12, 3))
(as.matrix(1:12, 3))

(df <- data.frame(x=1:5, y=6:10))
(matrix(df))
(as.matrix(df))

# Dimension, Index

m <- 1:12
dim(m) <- c(3, 4)

dim(m)
nrow(m)
ncol(m)
length(m)

m
m[1,]
m[,1]
m[1,1]

rownames(m) <- c("a", "b", "c")
colnames(m) <- c("w", "x", "y", "z")
m

# functions

(m1 <- matrix(1:9, nrow=3))
(m2 <- matrix(1:9, nrow=3, byrow=T))

m1 + m2
m1 - m2
m1 * m2
m1 / m2

m1 %*% m2

(m <- matrix(c(1,5,3,2), nrow=2))

t(m)
solve(m)
solve(m, c(3, 2))

eigen(m)

diag(m)

diag(c(1, 2))
diag(2)

rm(list=ls())
