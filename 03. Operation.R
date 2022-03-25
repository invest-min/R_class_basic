# Numeric

3 + 3
3 - 3
3 * 3
3 / 3

3/2
3%/%2
3%%2

-3 ^ 2
(-3) ^ 2
sqrt(4)
abs(-4)

exp(1)
log(2.72)
log10(10)
log2(2)
log(9, 3)

pi
sin(pi/2)
cos(pi)
tan(pi/4)

factorial(3)
choose(3, 2)

ceiling(pi)
ceiling(-pi)
floor(pi)
floor(-pi)
trunc(pi)
trunc(-pi)
round(pi, 2)
signif(pi, 2)

1:3 + 1:3
1:3 - 1:3
1:3 * 1:3
1:3 / 1:3

1:3 + 10
1:3 + 1:5

matrix(1:6, 2) + matrix(1:6, 2)
matrix(1:6, 2) - matrix(1:6, 2)
matrix(1:6, 2) * matrix(1:6, 2)
matrix(1:6, 2) / matrix(1:6, 2)

matrix(1:6, 2) + 10
matrix(1:6, 2) + matrix(1:6, 3)

array(1:12, c(2, 3, 2)) + array(1:12, c(2, 3, 2))
array(1:12, c(2, 3, 2)) - array(1:12, c(2, 3, 2))
array(1:12, c(2, 3, 2)) * array(1:12, c(2, 3, 2))
array(1:12, c(2, 3, 2)) / array(1:12, c(2, 3, 2))

array(1:12, c(2, 3, 2)) + 10

df1 <- data.frame(x=c(1, 2, 3), y=c(4, 5, 6))
df2 <- data.frame(v=c(4, 5, 6), w=c(1, 2, 3))

df1 + df2
df1 - df2
df1 * df2
df1 / df2

df1 <- data.frame(x=c(1, 2, 3), y=c("a", "b", "c"))
df1 <- data.frame(v=c(4, 5, 6), w=c("d", "e", "f"))

df1 + df1

# Logical

-3.14 == 3.14
-3.14 != 3.14
-3.14 >= 3.14
-3.14 <= 3.14

-3.14 == 3.14 & 3.14 == 3.14
-3.14 == 3.14 | 3.14 == 3.14

(-3.14 == 3.14) + (-3.14 != 3.14)
(-3.14 == 3.14) * (-3.14 != 3.14)
(-3.14 == 3.14 | 3.14 == 3.14) * 3

1:6 > 3
sum(1:6 > 3)
any(1:6 > 3)
all(1:6 > 3)

sqrt(2)^2
sqrt(2)^2 == 2
identical(sqrt(2)^2, 2)
all.equal(sqrt(2)^2, 2)
