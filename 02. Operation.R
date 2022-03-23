# Numeric

3 + 3
3 - 3
3 * 3
3 / 3

1:3 + 1:3
1:3 - 1:3
1:3 * 1:3
1:3 / 1:3

matrix(1:6, 2) + matrix(1:6, 2)
matrix(1:6, 2) - matrix(1:6, 2)
matrix(1:6, 2) * matrix(1:6, 2)
matrix(1:6, 2) / matrix(1:6, 2)

array(1:12, c(2, 3, 2)) + array(1:12, c(2, 3, 2))
array(1:12, c(2, 3, 2)) - array(1:12, c(2, 3, 2))
array(1:12, c(2, 3, 2)) * array(1:12, c(2, 3, 2))
array(1:12, c(2, 3, 2)) / array(1:12, c(2, 3, 2))

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

pi
ceiling(pi)
floor(pi)
trunc(pi)
round(pi, 2)
signif(pi, 2)

# Character

nchar("abc")
toupper("abc")
tolower("ABC")

paste("a", "b", "c")
paste("a", "b", "c", sep="/")
paste("a", "b", "c", sep="")
paste0("a", 1:3)

paste0(c("a", "b", "c"), c("A", "B", "C"))
paste0(c("a", "b", "c"))

paste(c("a", "b", "c"), collapse="")
paste(letters, collapse="")
paste(LETTERS, collapse="")

strsplit("abc/ABC", split="/")

substr("abcabc", 2, 5)
sub("a", "A", "abcabc")
gsub("a", "A", "abcabc")

# Logical

-3.14 == 3.14
-3.14 != 3.14
-3.14 >= 3.14
-3.14 <= 3.14

-3.14 == 3.14 & 3.14 == 3.14
-3.14 == 3.14 | 3.14 == 3.14

(-3.14 == 3.14 & 3.14 == 3.14) * 5
(-3.14 == 3.14 | 3.14 == 3.14) * 5

1:6 > 3
sum(1:6 > 3)
