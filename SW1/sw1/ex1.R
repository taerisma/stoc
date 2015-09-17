#SW1 Ex1 Stochastik
#verzeichnis afragen
#Verzeichnis setzen

#clear all
#Clear console

getwd()
setwd("/Users/marcelerismann/Desktop/Stoc/sw1")

#1.1
data <- read.table(file = "./child.txt",header = TRUE, sep = ",")
data
dim(data)
summary(data)
rownames(data)
data[5:10, "Bullying"]
rownames(data)[5:10]
colnames(data)
order(data[, "Drunkenness"], na.last = F)[26:30]
rownames(data[order(data[, "Drunkenness"], na.last = F)[26:30],])
data["Denmark", "Drunkenness"]
which.min(data[, "Mortality.rates"])
rownames(data[which.min(data[, "Mortality.rates"]),])
mean(data[, "Physical.activity"], na.rm = T)
mean.physical.activity <- mean(data[, "Physical.activity"],na.rm = T) 
which(data[, "Physical.activity"] < mean.physical.activity)
rownames(data[which(data[, "Physical.activity"] <mean.physical.activity), ])
order(data[, "Average.disposable.income"])
write.table(data[order(data[, "Average.disposable.income"]),], file = "income_ordered.txt", col.names = TRUE,row.names = TRUE)
# data <- read.table(file = "income_ordered.txt", header = TRUE)rownames(data)

#1.2
d.fuel <- read.table(file = "./d.fuel.dat",header = T, sep = ",")
d.fuel
d.fuel[5, ]
d.fuel[1:5, ]
head(d.fuel)
d.fuel[c(1:3, 57:60), ]
mean(d.fuel[, 3])
mean(d.fuel[, "mpg"])
mean(d.fuel$mpg)
mean(d.fuel[7:22, "mpg"])
t.kml <- d.fuel[, "mpg"] * 1.6093/3.789
t.kg <- d.fuel[, "weight"] * 0.45359
mean(t.kml)
mean(t.kg)

#1.3
x <- c(2.1, 2.4, 2.8, 3.1, 4.2, 4.9, 5.1, 6, 6.4, 7.3, 10.8, 12.5, 13, 13.7, 14.8, 17.6, 19.6, 23, 25, 35.2, 39.6)
x
sum(x)
sum(x^2)
#1.3b Mittelwert
n <- length(x) #die laene des Vektor das heisst die Anzahl der Elemente wird in n gespeichert
mean.x <- 1/n * sum(x)
mean.x
#1.3b Standardabweichung
var.x <- 1/(n - 1) * sum((x - mean.x)^2)
var.x
sqrt(var.x)
#1.3c Median
x.sorted <- sort(x)
0.5 * length(x)
k <- round(0.5 * length(x) + 0.5)
k
x.sorted[k]
#1.3d das 25% und 75% Quantiels
0.25 * length(x)
k <- round(0.25 * length(x) + 0.5)
k
x.sorted[k]
# und das 75 % Quantil ergibt
0.75 * length(x)
k <- round(0.75 * length(x) + 0.5)
k
x.sorted[k]

#1.3e Mittelwert, Standartabweichung, Median, 0.75 Quantil
mean(x)
sd(x)
median(x)
quantile(x, 0.75)

#1.3f Arithmetisches Mittel und Standartabweichung
z <- (x - mean(x))/sd(x)
mean(z)
sd(z)
