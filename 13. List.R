# List

(l1 <- list(1, 2, 3))
(l2 <- list(1, "a", T))
(l3 <- list(1:3, matrix(1:9, 3), mean))

c(l1, l2, l3)

l <- list()
l[[1]] <- 1
l[[2]] <- "a"
l[[3]] <- T
l[[4]] <- 1:3
l[[5]] <- matrix(1:9, 3)
l[[6]] <- mean

length(l)
str(l)
l

names(l)
names(l) <- c("a", "b", "c")

names(l)
str(l)
l

l4 <- list(1, 2, 3)
mean(l4)
mean(unlist(l4))

# Index

l[1]
class(l[1])
l[1] * 10
l["a"] * 10

l[c(1, 2)]
l[-1]
l[c(T, F, T, F, T, F)]

l[[1]]
class(l[[1]])
l[[1]] * 10
l[["a"]] * 10

l$a

(l <- list(a=1, b=2, c=list(d=3, e=4)))

l[[1]]
l[["a"]]
l[["b"]]
l[["c"]]
l[["c"]][["d"]]
l[["c"]][["e"]]
l$c$e

l[[1]] <- 10
l
l[["a"]] <- 20
l
l$a <- 30
l

l[[2]] <- 10
l
l[[3]] <- 20
l
l[[4]] <- 40
l
l[["e"]] <- 50
l
l$e <- 60
l

l[[4]] <- NULL
l
l[c("a", "b")] <- NULL
l

l[l<50] <- NULL
l

rm(list=ls())
