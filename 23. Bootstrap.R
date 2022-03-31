# Loop

v <- 1:5
a <- numeric(10000)
for(i in 1:10000) a[i] <- mean(sample(v, replace=T))
hist(a, main="", col="blue")
range(a)
quantile(a, c(.025, .975))

x <- sample(1:100, 100, replace=T)
y <- sample(1:10, 100, replace=T)
b <- numeric(10000)
for (i in 1:10000) {
  n <- sample(1:100, replace=T)   #샘플 크기만큼
  xv <- x[n]
  yv <- y[n]
  fit <- lm(yv ~ xv)
  b[i] <- coef(fit)[2]
}
hist(b, main="", col="green")
quantile(b, c(0.025,0.975))

# Boot

library(boot)

v <- 1:5
m <- function(v, i) mean(v[i])
b <- boot(v, m, R=10000)
b

mean(v)
mean(b$t)
mean(b$t) - mean(v)
sqrt(var(b$t))

hist(v)
hist(a)
hist(b$t)

boot.ci(b)
quantile(b$t, c(0.025,0.975))

x <- sample(1:100, 100, replace=T)
y <- sample(1:10, 100, replace=T)
df <- data.frame(x, y)

reg <- function(df, i) {
  xx <- x[i]
  yy <- y[i]
  fit <- lm(yy ~ xx)
  coef(fit)
}

b <- boot(df, reg, R=10000)
b
boot.ci(b, index=2)
