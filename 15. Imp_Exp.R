# Print, Cat

1
1:3
matrix(1:6, 2)
array(1:12, c(2, 3, 2))
data.frame(x=1:3, y=4:6)
list(x=1:3, y=4:6)

print(1)
print(1:3)
print(matrix(1:6, 2))
print(array(1:12, c(2, 3, 2)))
print(data.frame(x=1:3, y=4:6))
print(list(x=1:3, y=4:6))

print(pi, digits=3)
print(matrix(pi:(pi+5), 2), digits=3)

print("3 X 3 =", 3*3, ".")
cat("3 X 3 =", 3*3, ".")
cat("3 X 3 =", 3*3, "\b.")
cat("3 X 3 =", 3*3, "\b.", "\t4 X 4 =", 4*4, "\b.")
cat("3 X 3 =", 3*3, "\b.", "\n4 X 4 =", 4*4, "\b.")

cat("Pi is", pi, digits=3)
cat("Pi is", format(pi, digits=3))

a <- 1:9
cat(a, file="data.txt", sep=", ")
cat(a, file="data.txt", sep="\t")
cat(a, file="data.txt", sep="\n")
cat(a, file="data.txt", sep=", ", "\n")
b <- 9:1
cat(b, file="data.txt", sep=", ", "\n")
cat(a, file="data.txt", sep=", ", append=T, "\n")

# Import, Export

data <- data.frame(a=a, b=b)

write.csv(data, file="data.csv")
write.csv(data, file="data.csv", row.names=F)
read.csv(file="data.csv")
read.csv(file="data.csv", header=F)

write.table(data, file="data.txt", sep=";", row.names=F)
read.table("data.txt", sep=";")
read.table("data.txt", sep=";", header=T)

save(data, file="data.RData")
rm(list=ls())
load("data.RData")
rm(list=ls())
