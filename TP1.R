# Exercice sur les Fonctions en R
# 1.Afficher le jeu de données iris et la classe de l'objet iris.
iris
class(iris)

# 2.Afficher le jeu de données iris dans une vue avec la fonction View()
View(iris)
# 3.nombre de lignes 
nrow(iris)
# 4.nombre de colonne 
ncol(iris)
#5.nom des colonnes
colnames(iris)
# 6.Afficher un résumé 
summary(iris)

# 7.les colonnes Sepal.Length et Species.

iris[ , c("Sepal.Length", "Species")]

# 8. ligne 100,103 et 105
iris [c(100,103,105),]
# lignes 50 à 100.
iris[c(50,100),]
#  moyenne de la variable Sepal.Length
mean (iris$Sepal.Length)
# médiane de la variable Sepal.Width.
median (iris$Sepal.Width)
#  l'écart-type de la variable Petal.Length.
sd(iris$Petal.Length)
#  les déciles de la variable Petal.Width
quantile(iris$Sepal.Width)

quantile(iris$Petal.Width, probs = seq(from = 0.1, to = 0.9, by =0.1))


#Exercice 2 - Import/Exporter un dataframe

dfanime <- read.csv("C:/Users/tnguyen1/Downloads/anime.csv/anime.csv", header =TRUE, sep =",",dec =".")

dfmanga <- read.csv("C:/Users/tnguyen1/Downloads/manga.csv/manga.csv", header =TRUE, sep =",",dec =".")

class(dfanime)
class(dfmanga)
#2
view(dfanime)
view(dfmanga)
#3
dim(dfanime)
dim(dfmanga)
#4
mean(dfanime$Score)
mean(dfmanga$Score)

#5
sum(dfanime$Vote)
sum(dfmanga$Vote)
#6
sd(dfanime$Score)
sd(dfmanga$Score)
#7
quantile(dfanime$Score)
quantile(dfmanga$Score, probs = seq(from = 0.1, to = 0.9, by =0.1))

quantile(dfanime$Score)
quantile(dfmanga$Score, probs = seq(from = 0.1, to = 0.9, by =0.1))


#Les fonctions subset(), table() et prop.table()
#1
extraction1<- subset(dfmanga,Score >9)
nrow(extraction1)
#2
extraction2 <- subset(dfmanga, Vote >= 200000)
nrow (extraction2)
#3
extraction3 <- subset(dfmanga, Vote >= 200000 & Score >= 8)
nrow(extraction3)
#4
extraction4 <- subset(dfmanga,Score>= 7 & Score <=8 )
nrow(extraction4)


#Filtre sur les Animes
#1 

#2
rating<- subset(dfanime, Rating=="R - 17+ (violence & profanity)" )
nrow(rating)                
#3 
ratingnote <- subset(dfanime, Rating=="R - 17+ (violence & profanity)" & Score >8)
nrow(ratingnote)
#4
difrating <- subset(dfanime, Rating != "R - 17+ (violence & profanity)")
nrow (difrating)

#5
rating_pd_g <- subset(dfanime, Rating== "PG - Children" & Rating== "G - All Ages" )
nrow(rating_pd_g)
#6
ratingdif_pd_g <- subset(dfanime, Rating != "PG - Children" & Rating != "G - All Ages" )
nrow(ratingdif_pd_g)
# 7
anime_note_vote <- subset(dfanime, Score >= 9 |Vote >=400000)
nrow(anime_note_vote)

#Les fonctions rbind() et write.table()

#1
dfanime <- dfanime[ , c("Title","Score","Vote","Ranked")]
dfmanga <- dfmanga[ , c("Title","Score","Vote","Ranked")]
#2

#3
#4
