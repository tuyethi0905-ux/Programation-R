setwd(dir ="C:/Users/tnguyen1/Downloads")
df <- read.csv("fao.csv", header = TRUE, sep = ";", dec = ",")

# nbr pays
nrow(df)

summary(df)

#Exo2: 
#1
mean(df$Dispo_alim,na.rm = TRUE)
#2 

sum(df$Population, na.rm = TRUE)  # na est Not Available; rm est remove

#3

sd(df$Export_viande, na.rm = TRUE)

sd(df$Import_viande, na.rm = TRUE)
#4

median(df$Prod_viande)

#5

quantile(df$Dispo_alim)

#6

quantile(df$Dispo_alim, probs = seq(0,1,0.01))

#Exo3: Tris et filtres
#1
rang = order(df$Population, decreasing = FALSE)
resultat = head(df[ rang , ], n = 5)
View(resultat)

#2
rang = order(df$Population, decreasing = TRUE)
resultat = head(df[ rang , ], n = 5)
View(resultat)

#3
rang = order(df$Prod_viande, decreasing = TRUE)
resultat = head(df[ rang , ], n = 5)
View(resultat)
#4
rang = order(df$Export_viande, decreasing = TRUE)
resultat = head(df[ rang , ], n = 5)
View(resultat)
#5
resulat= subset(df, Dispo_alim >=2300)
View(resultat)
nrow(resultat)

#6
resultat= subset(df, Dispo_alim>=3500 & Import_viande>=1000000)
View(resultat)
#7
resultat = subset(df, Nom== "France"| Nom == "Belgique")
View(resultat)

resultat = subset(df, Nom %in% c("France","Belgique"))
View(resultat)

#Exo4: Modifier le dataframe
 
