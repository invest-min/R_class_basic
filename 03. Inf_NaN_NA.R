# Inf: Infinitive

3/0

Inf + Inf
Inf * Inf
Inf * (-Inf)
Inf + 1

is.infinite(3/0)

# NaN: Not a Number

Inf - Inf
Inf / Inf
log(-1)

NaN + NaN
NaN - NaN
NaN * NaN
NaN / NaN
NaN + 1

is.nan(log(-1))

# NA: Not Available

NA + NA
NA - NA
NA * NA
NA / NA
NA + 1

NA + 1 == NA
is.na(NA + 1)

is.na(c(1, 2, 3, 4, NA))
sum(is.na(c(1, 2, 3, 4, NA)))
table(is.na(c(1, 2, 3, 4, NA)))

na.omit(c(1, 2, 3, 4, NA))
na.omit(data.frame(x=c(1, 2, 3, 4, NA), y=c(NA, 4, 3, 2, 1)))
