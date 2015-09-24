#SW2 Ex2 Stochastik
#
#
#Aufgabe 1
#aus Folien Seite 9
#
#die Klassenbreite ist enorm wichtig
geysir<-faithful
geysir[,2]
colnames(geysir)
par(mfrow = c(2,2))
hist(geysir[,"waiting"])
hist(geysir[,"waiting"],breaks=20)
hist(geysir[,"waiting"],breaks = seq(41,96, by = 11))# von 41 bis 96 in 11er Schritten

#Aufgabe 1b
#erruption 
hist(geysir[,"eruptions"])#nicht geeignete darstellung

plot
#Aufgabe 1b
#erruption 
eruptionsdauer <- geysir[,"eruptions"]
n <- length(eruptionsdauer)
plot(sort(eruptionsdauer),(1:n)/n, type="s",ylim=c(0,1),ylab = "Kummulative Verteilung",xlab = "x Achse", main="Titel")
#intepretation
#40 % der eruptionszeiten sind kürzer als 4 minuten
#median 3.7 das sind 50 prozent der punkte sind kürzer
# 


# Aufgaben
# Reggression

#plot(recession.velocity, distance,  xlab = "sdf",ylab = "sdf",main = "titel Regressionsgerade")

# Aufgaben 2
# Notenstatistik
noten<- c(4.2, 2.3, 5.6, 4.5, 4.8, 3.9, 5.9, 2.4, 5.9, 6, 4, 3.7, 5, 5.2, 4.5, 3.6, 5, 6, 2.8, 3.3, 5.5, 4.2, 4.9, 5.1)
notenSortiertAbsteigend<- sort(noten, decreasing = TRUE)
notenSortiertAbsteigendVeraendert<- (notenSortiertAbsteigend[1:3]
notenSortiertAbsteigendVeraendertVeraendet<-notenSortiertAbsteigendVeraendert+1
notenSortiertAbsteigendVeraendertVeraendetGanz<- c(notenSortiertAbsteigendVeraendertVeraendet,noten[4:length(noten)])
notenSortiertAbsteigendVeraendertVeraendetGanz
sort(notenSortiertAbsteigendVeraendertVeraendetGanz)
mean(noten)
mean(notenSortiertAbsteigendVeraendertVeraendetGanz)
median(noten)
median(notenSortiertAbsteigendVeraendertVeraendetGanz)
# 
# Nurmer 2.3

schlamm.all<- read.table(file = "/Users/marcelerismann/GitHub/stoc/SW2/klaerschlamm.dat",header = TRUE)
#schlamm.all<- read.table(file = "./klaerschlamm.dat",header=TRUE)
schlamm<- schlamm.all[,-1 ] # Labor-Spalte entfernen
par(mfrow = c(3,3))
summary(schlamm)
schlamm
boxplot(schlamm[,1])
boxplot(schlamm[,2])
boxplot(schlamm[,3])
boxplot(schlamm[,4])
boxplot(schlamm[,5])
boxplot(schlamm[,6])
boxplot(schlamm[,7])
boxplot(schlamm[,8])
boxplot(schlamm[,9])

par(mfrow = c(1,1))
boxplot(schlamm)

schlamm.all#9 Proben von 21 Labors untersucht
# median und mean der 21 Zeilen über die neunn Proben bilden
schlamm<- schlamm.all[,-1 ]
