# Dataframe

(df <- data.frame(x=c("a", "b", "c", "d", "e", "f", "g", "h", "i"),
                  y=c(1, 2, 3, 4, 5, 6, 7, 8, 9)))

x <- c("a", "b", "c", "d", "e", "f", "g", "h", "i")
y <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
(df <- data.frame(x, y))

(m <- matrix(1:6, 2))
(dfm <- as.data.frame(m))
colnames(m) <- paste0("x", 1:3)
m
(dfm <- as.data.frame(m))

(l <- list(1:3, c("a", "b", "c")))
(dfl <- as.data.frame(l))
(l <- list(x=1:3, y=c("a", "b", "c")))
(dfl <- as.data.frame(l))

z1 <- c("i", 10)
rbind(df, z1)
df

z2 <- 9:1
cbind(df, z2)
df

(z3 <- data.frame(c("i", "j"), 10:11))
rbind(df, z3)
(z3 <- data.frame(x=c("i", "j"), y=10:11))
rbind(df, z3)

(z4 <- data.frame(a=11:19, b=19:11))
df <- cbind(df, z4)
df

names(df)
colnames(df)
rownames(df)

names(df) <- paste0("x", 1:4)
rownames(df) <- paste0("n", 1:9)
df

i <- paste0("i", 1:9)
(df <- data.frame(row.names=i, x, y, z4))

head(df)
tail(df)

dim(df)
nrow(df)
ncol(df)
length(df)
str(df)

# Index

df[1]
df[[1]]
str(df[1])
str(df[[1]])

df["x"]
df[["x"]]

df[c(1, 2)]
df[[c(1, 2)]]
df[[1]][[2]]

df[1,]
df[,1]
df[1,1]

df$x
df$x[1]

df$a + df$b
df$a - df$b
df$a * df$b
df$a / df$b

df$name <- rownames(df)
rownames(df) <- NULL
df

df[df$a <= 17,]
(df1 <- df[df$a <= 17, c("name", "a")])
(df2 <- df[df$b <= 17, c("name", "b")])

merge(df1, df2)
merge(df1, df2, all=T)

names(df2) <- c("n", "b")
merge(df1, df2)
merge(df1, df2, by.x="name", by.y="n")

# Duplicated, Complete Cases

(df <- data.frame(x=c("a", "b", "c", "c", "d", NA),
                  y=c(1, 2, 3, 3, 4, 5)))
duplicated(df)
df[!duplicated(df),]
which(duplicated(df))

complete.cases(df)
df[complete.cases(df),]

# Subset

df
subset(df, subset = a>=15)
subset(df, subset = a>=15, select = c("x", "y", "a"))
subset(df, subset = a>=15 & ab1 >= 220)
subset(df, subset = a>=mean(a))

# Sample

sample(df, 5, replace=T)
sample(df, 5)

set.seed(1234)
i <- sample(nrow(df), 5)
df[i,]

# With, Within, Attach/Detach

df$a * df$b
with(df, a * b)

with(df, {
  ab <- a * b
  plot(a, ab)
})
ab

with(df, {
  ab <<- a * b
  plot(a, ab)
})
ab

df$ab1 <- df$a * df$b
df
within(df, ab2 <- a * b)
df
(df <- within(df, ab2 <- a * b))

attach(df)
search()

a * b

y
df$y
df$y <- 0
df$y
y

detach(df)
search()

# tibble

library(tibble)

(tb <- tibble(x, y))
(tb <- as_tibble(df))
str(tb)

tb <- df %>%
  rownames_to_column(var="n") %>% 
  as_tibble()
tb

rm(list=ls())
