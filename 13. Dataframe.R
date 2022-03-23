# data.frame

(df <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                  y=c("a", "b", "c", "d", "e", "f", "g", "h", "i")))

dim(df)
length(df)
str(df)

head(df)
tail(df)

df[1,]
df[,1]
df[1,1]

df$x
df$x[1]

names(df)
colnames(df)
rownames(df)

names(df) <- c("x1", "y1")
rownames(df) <- paste0("n", 1:9)
df

# tibble

library(tidyverse)
(tb <- as_tibble(df))

tb <- df %>%
  rownames_to_column(var="name") %>% 
  as_tibble()
tb

# Operations

df1 <- data.frame(x=c(1, 2, 3), y=c(4, 5, 6))
df2 <- data.frame(v=c(4, 5, 6), w=c(1, 2, 3))

df1 + df2
df1 - df2
df1 * df2
df1 / df2

df1$x + df2$v
df1$x - df2$v
df1$x * df2$v
df1$x / df2$v

df3 <- data.frame(x=c(1, 2, 3), y=c("a", "b", "c"))
df4 <- data.frame(v=c(4, 5, 6), w=c("d", "e", "f"))

df3 + df4

rm(list=ls())
