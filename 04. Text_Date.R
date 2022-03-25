# Text

nchar("abc")
length("abc")
nchar(c("a", "bb", "ccc"))
length(c("a", "bb", "ccc"))

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
paste(month.name, collapse=" ")
paste(month.abb, collapse=" ")

strsplit("abc/ABC", split="/")
unlist(strsplit("abc/ABC", split="/"))

strsplit("I am happy", split=" ")
strsplit("I am happy", split="")

substr("abcabc", 1, 2)
substr("abcabc", nchar("abcabc") - 1, nchar("abcabc"))

sub("a", "A", "abcabc")
gsub("a", "A", "abcabc")

t <- c("apple juice", "apple pie",
       "banana juice", 'banana pie',
       "orange juice", "orange pie")

grep("juice", t)
grep("juice", t, value=T)
t[grep("juice", t)]
grep("juice", t, value=T, invert=T)
t[grep("juice", t, invert=T)]

grepl("pie", t)
t[grepl("juice", t)]
sum(grepl("pie", t))

library(stringr)

t

str_length(t)

str_c("a", "b", "c", sep=" ")
str_c(t, 1:6, sep=" ")
str_c(t, collapse=" ")

str_split(t, " ")
unlist(str_split(t, " "))

str_sub(t, 1, 3)

str_replace(t, "an", "xx")
str_replace_all(t, "an", "xx")

str_pad(t, width=12, side="left", pad=" ")

str_detect(t, "juice")

str_count(t, "juice")

str_locate(t, "an")
str_locate_all(t, "an")

str_extract(t, "an")
str_extract_all(t, "an")
unlist(str_extract_all(t, "an"))

str_match(t, "an")
str_match_all(t, "an")
unlist(str_match_all(t, "an"))

# Date

Sys.Date()
mode(Sys.Date())
class(Sys.Date())

as.Date("1970-01-01")
as.Date("1970/01/01")

as.Date("1970.01.01")
as.Date("1970.01.01", format("%Y.%m.%d"))

as.Date("01-01-1970")
as.Date("01-01-1970", format("%m-%d-%Y"))

as.Date("70-01-01")
as.Date("70-01-01", format("%y-%m-%d"))

t <- as.Date("1970-01-01")
format(t, format("%d-%d-%y"))
format(t, format("%d-%d-%y %A"))
format(t, format("%d-%d-%y %a"))

weekdays(t)
months(t)
quarters(t)

t + 1
t + 1:7

seq(t, by=1, length=7)
seq(t, by="7 days", length=4)
seq(t, by="week", length=4)
seq(t, by="month", length=4)
seq(t, by="3 months", length=4)
seq(t, by="quarter", length=4)
seq(t, by="4 quarters", length=4)

y <- 1970
m <- 1
d <- 1
ISOdate(y, m, d)
class(ISOdate(y, m, d))
as.Date(ISOdate(y, m, d))

Sys.Date() - t
difftime(Sys.Date(), t, units="days")
difftime(Sys.Date(), t, units="weeks")

Sys.Date() > t

library(lubridate)

today()
now()

ymd("1970-01-01")
ymd("1970/01/01")
ymd("1970.01.01")

ymd("70-01-01")
mdy("01-01-1970")
dmy("01011970")
dmy("010170")

ymd("1970년 1월 1일")
mdy("jan 1st 1970")

year(Sys.Date())
quarter(Sys.Date())
month(Sys.Date())
day(Sys.Date())

yday(Sys.Date())
mday(Sys.Date())
wday(Sys.Date())
wday(Sys.Date(), label=T)
