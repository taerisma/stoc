%Aufgabe 1
data <- read.table("./Data/child.txt",sep=",",header=TRUE)
head(data)
dim(data)

data <- read.table(file = "./child.txt", header = TRUE,sep = ",")

> getwd()
[1] "/Users/marcelerismann"
> setwd("/Users/marcelerismann/Desktop/Stoc")
> d.fuel <- read.table(file = "./d.fuel.dat",header = T, sep = ",")
