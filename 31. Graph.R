### ??????

# Ȯ??

?Լ?

mean(v1)
mean(v1, na.rm=T)

colMeans(df)
colMeans(df, na.rm=T)



### ?׷???

# ????

f <- as.factor(sample(c("a", "b", "c"), 100, replace=T))
table(f)

f <- factor(sample(c("a", "b", "c"), 100, replace=T))
table(f)








plot(f, xlab="f")
pie(table(f))
barplot(table(f), xlab="f")

# ????

x <- sample(1:100, 100, replace=T)
summary(x)

boxplot(x)
hist(x)
plot(density(x))

plot(x, xlab="x")
plot.ts(x, xlab="x")

# ???? ?? ????

y <- sample(-5:5, 100, replace=T)
summary(y)

plot(f, y)
plot(y ~ f)

plot(x, y)
plot(y ~ x)

df <- data.frame(y, x, f)
pairs(df, panel=panel.smooth)
