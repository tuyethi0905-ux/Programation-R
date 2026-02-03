# Les fonctions getwd(),setwd() et read.csv().
# 1
#2 
getwd()
#3
setwd(dir = "C:/Users/tnguyen1/Downloads")
getwd()

#4

bodies_karts = read.csv("bodies_karts.csv", header= TRUE, dec=",",sep=";")
tires = read.csv("tires.csv", header= TRUE, dec=",",sep="\t")
gliders = read.csv("gliders.csv", header= TRUE, dec= ",", sep="|")
drivers = read.csv("drivers.csv", header= TRUE, dec= ",", sep=";")

#5
dim(drivers)
dim(gliders)
dim(tires)
dim(bodies_karts)
#Les fonctions cor(), corrplot(), install.packages() et plot().
#1
summary(drivers)
summary(gliders)
summary(tires)
summary(bodies_karts)

#2
plot(x=drivers$Weight, y= drivers$Acceleration, main = "Drivers : Weight/Acceleration")

#3
cor(x=drivers$Weight,y=drivers$Acceleration, method = "pearson")
#4
covXY = cov(x = drivers$Weight,
            y = drivers$Acceleration)
sX = sd(drivers$Weight)
sY = sd(drivers$Acceleration)
print(covXY / (sX*sY))
#5
coefCorr = cor(x = drivers$Weight,
               y = drivers$Acceleration)
coefDeter = coefCorr^2
print(coefDeter)
#6
matriceCor = cor(drivers[ , - 1])
matriceCor = round(matriceCor , 2)
View(matriceCor)
#7
install.packages("corrplot")
#8
library(corrplot) 
corrplot(matriceCor, method="circle")
#9
matriceCor = round(cor(tires[ , - 1]),1)
corrplot(matriceCor, method="color", type="upper", order="hclust", addCoef.col = "black", tl.col="black", tl.srt=45,diag=FALSE )

matriceCor = round(cor(bodies_karts[ , - 1]),1)
corrplot(matriceCor, method="color",  type="upper", order="hclust", addCoef.col = "black",tl.col="black", tl.srt=45,diag=FALSE )


matriceCor = round(cor(gliders[ , - 1]),1)
corrplot(matriceCor, method="color",  type="upper", order="hclust", addCoef.col = "black", tl.col="black", tl.srt=45, diag=FALSE )

#La fonction order().
#1
resultat1 = drivers[ ,c("Driver","Weight")]
View(resultat1)
#2
resultat2= drivers[1:10,c("Driver", "Acceleration")]
View(resultat2)
#3
resultat3= drivers[,-c(3,7,9)]
View(resultat3)
#4
resultat4 = drivers[, -c(2,3)]
View(resultat4)
#5
resultat5 = drivers[, c("Driver","Acceleration","Weight")]
View(resultat5)
#6
resultat6 = drivers[c(3,12,32),]
View(resultat6)
#7
resultat7 = drivers[c(32,3,12),]
View(resultat7)
#8
rang1 = order(drivers$Weight)
resultat8 = drivers[rang1, c("Driver","Weight")]
View(resultat8)
#9
rang2 = order(drivers$Acceleration)
resultat9= drivers[rang2, c("Driver","Acceleration")]
View(resultat9)
#10
rang3= order(drivers$Weight & drivers$Acceleration, decreasing = c(TRUE,FALSE))
resultat10 = drivers[rang3, c("Driver", "Weight", "Acceleration")]
View(resultat10)

#Exercice 4 - GOAT
#1
help(subset)
topDriver = subset(x= drivers, subset = Acceleration == max(Acceleration), select = c("Driver", "Acceleration"))
#2
help(subset)
topGlider = subset(x= drivers, subset = Acceleration == max(Acceleration), select = c("Glider", "Acceleration"))


help(subset)
topTires = subset(x= drivers, subset = Acceleration == max(Acceleration), select = c("Tires", "Acceleration"))


help(subset)
topBody = subset(x= drivers, subset = Acceleration == max(Acceleration), select = c("Body", "Acceleration"))