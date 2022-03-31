# If, Else, Ifelse

x <- pi
y <- exp(1)

if(x>y) x
if(x<y) y
if(x<y) y else x

x <- 1:5
y <- c(3, 3, 3, 3, 3)

if(x>y) x
if(x<y) y

ifelse(x>y, x, y)

# Swich

switch(1, "a", "b", "c")
switch(2, "a", "b", "c")
switch(3, "a", "b", "c")
switch(4, "a", "b", "c")

switch("a", a="a", b="b", c="c")
switch("b", a="a", b="b", c="c")
switch("c", a="a", b="b", c="c")
switch("d", a="a", b="b", c="c")
switch("d", a="a", b="b", c="c", "etc")

fn <- function(x, type) {
  switch(type,
         mean=mean(x),
         median=median(x))
}
x <- c(1:9, 20)
fn(x, "mean")
fn(x, "median")

# Repeat, While, For

i <- 5
repeat {
  if(i > 25) break
  else {
    print(i)
    i <- i + 5
  }
}

i <- 5
while (i <= 25) {
  print(i)
  i <- i + 5
}

for (i in seq(5, 25, by=5)) print(i)

v <- vector("double", 5)
for(i in seq_along(v)) {
  v[i] <- mean(rnorm(10))
}
v

rm(list=ls())
