### 이산확률분포

# 베르누이분포

sample(c("H", "T"), size=10, replace=T)
sample(c("H", "T"), size=10, replace=T, prob=c(.2, .8))

# 이항분포

dbinom(5, size=10, prob=.5)
pbinom(5, size=10, prob=.5)
qbinom(.5, size=10, prob=.5)
rbinom(10, size=10, prob=.5)

x <- 0:10
plot(x, y=dbinom(x, size=10, prob=.5))

x <- 0:10
data.frame(x, y=dbinom(x, size=10, prob=.5)) %>% 
  ggplot(aes(x, y)) +
  geom_col() +
  labs(title="Binomial Distribution")

tibble(x=1:10, y=dbinom(x, size=10, prob=.5)) %>% 
  ggplot(aes(x, y)) +
  geom_col() +
  labs(title="Binomial Distribution")

# 포아송분포: 일정 시간 내에 어떤 사건이 발생할 횟수

dpois(3, lambda=3)
ppois(3, lambda=3)
qpois(.5, lambda=3)
rpois(10, lambda=3)

tibble(x=0:11, y=dpois(x, lambda=3)) %>% 
  ggplot(aes(x, y)) +
  geom_col() +
  labs(title="Poisson Distribution")



### 연속확률분포

# 정규분포

dnorm(.5, mean=0, sd=1)
pnorm(.5, mean=0, sd=1)
qnorm(.5, mean=0, sd=1)
rnorm(10, mean=0, sd=1)

integrate(dnorm, -Inf, 1.645)
pnorm(1.645)
qnorm(.95)

integrate(dnorm, -Inf, 1.96)
pnorm(1.96)
qnorm(.975)

ggplot(data.frame(x=c(-3, 3)), aes(x)) +
  stat_function(fun=dnorm) +
  labs(title="Standard Normal Distribution")

ggplot(data.frame(x=c(-3, 3)), aes(x)) +
  stat_function(fun=dnorm, args=list(mean=1, sd=.5)) +
  labs(title=expression(list(mu==1, sigma==.5)))

ggplot(data.frame(x=c(-3, 3)), aes(x)) +
  stat_function(fun=pnorm) +
  labs(title="Cumulative Standard Normal Distribution")

ggplot(data.frame(x=rnorm(1000))) +
  geom_histogram(aes(x=x, y=stat(density)), bins=20) +
  stat_function(fun=dnorm, color="red", size=1)

# t분포

dt(.5, df=10)
pt(.5, df=10)
qt(.5, df=10)
rt(10, df=10)

ggplot(data.frame(x=c(-7, 7)), aes(x)) +
  stat_function(aes(color="N(0, 1)"), fun=dnorm, size=1.2) +
  stat_function(aes(color="t(1)"), fun=dt, args=list(df=1), size=1.2) +
  stat_function(aes(color="t(2)"), fun=dt, args=list(df=2), size=1.2)

# 지수분포: 특정한 사건 발생까지 걸리는 시간

dexp(.5, rate = 2)
pexp(.5, rate = 2)
qexp(.5, rate = 2)
rexp(10, rate = 2)

ggplot(data.frame(x=c(0, 4)), aes(x)) +
  stat_function(aes(color="rate=1"),
                fun=dexp,
                size=1.2) +
  stat_function(aes(color="rate=2"),
                fun=dexp,
                args=list(rate=2),
                size=1.2) +
  stat_function(aes(color="rate=3"),
                fun=dexp,
                args=list(rate=3),
                size=1.2) +
  labs(title="Exponential Distribution", color="")

# F분포

df(1, df1=3, df2=5)
pf(1, df1=3, df2=5)
qf(.5, df1=3, df2=5)
rf(10, df1=3, df2=5)

ggplot(data.frame(x=c(0, 5)), aes(x)) +
  stat_function(fun="df", args=list(df1=3, df2=5)) +   #왜 F분포만 "" 필요하지?
  labs(title="F Distribution")
