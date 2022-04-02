# Numeric

(x <- 1:20)

summary(x)
summary(x)[1]
summary(x)["Min."]

cut(x, 4)
table(cut(x, 4))
cut(x, c(0, 5, 10, 15, 20))
table(cut(x, c(0, 5, 10, 15, 20)))

plot(x)

boxplot(x)
hist(x)
plot(density(x))

(y <- x^2)

table(cut(x, 4), cut(y, 4))
table(cut(x, c(0, 5, 10, 15, 20)), cut(y, c(0, 100, 200, 300, 400)))

plot(x, y)
plot(y~x)

(df <- data.frame(x, y))
plot(df)

# Categorical

(f <- sample(factor(c("a", "b", "c")), 20, replace=T, set.seed(1234)))

table(f)
plot(f)

barplot(table(f))
pie(table(f))

plot(f, y)
plot(y~f)

(g <- sample(factor(c("a", "b", "c")), 20, replace=T, set.seed(4321)))

table(f, g)

margin.table(table(f, g))
margin.table(table(f, g), margin=1)
margin.table(table(f, g), margin=2)

addmargins(table(f, g))
addmargins(table(f, g), margin=1)
addmargins(table(f, g), margin=2)

prop.table(table(f, g))
addmargins(prop.table(table(f, g)))
prop.table(table(f, g), margin=1)
addmargins(prop.table(table(f, g), margin=1))
prop.table(table(f, g), margin=2)
addmargins(prop.table(table(f, g), margin=2))

xtabs(~ f + g)

plot(f, g)
barplot(table(f, g))

# Multi

(df <- data.frame(df, f, g))
plot(df)
pairs(df, panel=panel.smooth)

# Time Series

plot(y)

(yt <- ts(y))
plot(yt)

plot.ts(y)

# Add point and line

?points

df2 <- df[x>10,]
points(df2, col="red", pch=19)

lines(x, y, col="grey")
lines(x, fitted(lm(y~x)), col="blue", lty="dashed")

abline(v=mean(x), h=mean(y), col="purple", lty="dotted")
abline(lm(y~x), col="black")

# Graphic Parameters

?par

plot(x, y,
     main="Main Title",
     sub="Sub Title",
     xlab="xxx",
     ylab="yyy")

plot(x, y, las=0)
plot(x, y, las=1)
plot(x, y, las=2)
plot(x, y, las=3)

plot(x, y, bty="o")
plot(x, y, bty="n")
plot(x, y, bty="l")
plot(x, y, bty="[")
plot(x, y, bty="]")

plot(x, y, type="p")
plot(x, y, type="l")
plot(x, y, type="b")
plot(x, y, type="o")
plot(x, y, type="s")
plot(x, y, type="h")

plot(x, y, type="n")
grid()
lines(x, y, col="grey")
points(x, y, pch=19, col="red")

plot(x, y)
plot(x, y, xlim=c(0, 10), ylim=c(0, 100))

# Legend, Text

plot(x, y, type="l", col="red")
abline(h=200, col="blue")

legend("topleft", inset=.02, title="y~x",
       legend=c("red", "blue"),
       lty=c("solid", "solid"),
       col=c("red", "blue"))

text(2, 20, font=1, col="red", cex=1.0,
     labels="text1")
text(5, 50, font=3, col="blue", cex=1.2,
     labels="text2")

text(x, y, font=1, col="darkgrey", cex=1.0,
     labels=y)
text(x, y, font=1, col="black", cex=1.0, pos=1,
     labels=y)
text(x, y, font=1, col="yellow", cex=1.0, pos=2,
     labels=y)
text(x, y, font=1, col="skyblue", cex=1.0, pos=3,
     labels=y)
text(x, y, font=1, col="magenta", cex=1.0, pos=4,
     labels=y)

# Windows, Margins

windows()
windows(12, 8)

par("mai")

plot(x, y,
     main="Main Title",
     sub="Sub Title",
     xlab="xxx",
     ylab="yyy")

old_par <- par("mai"=c(1, 2, 3, 4))

plot(x, y,
     main="Main Title",
     sub="Sub Title",
     xlab="xxx",
     ylab="yyy")

par(old_par)

plot(x, y,
     main="Main Title",
     sub="Sub Title",
     xlab="xxx",
     ylab="yyy")

par("mai")

par("mar")
old_par <- par("mar"=c(1, 2, 3, 4))

plot(x, y,
     main="Main Title",
     sub="Sub Title",
     xlab="xxx",
     ylab="yyy")

par(old_par)

plot(x, y,
     main="Main Title",
     sub="Sub Title",
     xlab="xxx",
     ylab="yyy")

par("mar")

# Rows and Columns

par("mfrow")
par("mfrow"=c(2, 2))

plot(x)
plot(y)
plot(f)
plot(g)

par("mfrow"=c(1, 1))

par("mfcol")
par("mfcol"=c(2, 2))

plot(x)
plot(y)
plot(f)
plot(g)

par("mfcol"=c(1, 1))

# Function

plot(lm(y~x))

rm(list=ls())
