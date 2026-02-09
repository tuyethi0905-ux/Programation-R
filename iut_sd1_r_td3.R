#Exercice sur les Fonctions en R
#1
library(readxl)
pokemon <- read_excel(path ="C:/Users/tnguyen1/Downloads/pokemon.xlsx", sheet = "pokemon")
#2
nrow(pokemon)
ncol(pokemon)
#3
summary(pokemon)
#4
pokemon$is_legendary= as.factor(pokemon$is_legendary)
pokemon$generation=as.factor(pokemon$generation)
pokemon$type =as.factor(pokemon$type)
#5
summary(pokemon)

#Exercice 2 - Création de colonne

#La fonction ifelse().

#1
med = median(pokemon$attack)
pokemon$attack_group= ifelse(test= pokemon$attack>= med, yes ="attack+", no="attack-")
pokemon$attack_group = as.factor(pokemon$attack_group)
summary(pokemon$attack_group)
#2
pokemon$water_fire = ifelse (pokemon$type %in% c("water","fire"), yes ="yes",no="no")
pokemon$water_fire = as.factor(pokemon$water_fire)
summary(pokemon$water_fire)
#3
q3=quantile(pokemon$attack, probs = 0.75)
pokemon$best = ifelse(pokemon$speed > q3, yes = "attack", no="defense")
pokemon$best = as.factor(pokemon$best)
summary(pokemon$best)

#La fonction is.na()
#1
requete = subset(pokemon, is.na(pokemon$weight_kg))
View(requete)
#2
med_weight= median(pokemon$weight_kg, na.rm=TRUE)
pokemon$weight_kgNA = ifelse(is.na(pokemon$weight_kg), yes = med_weight, no = pokemon$weight_kg )

med_height = median(pokemon$height_m, na.rm= TRUE)
pokemon$height_mNA = ifelse(is.na(pokemon$height_m), yes = med_height, no = pokemon$height_m)

#La fonctions cut()
#1
pokemon$weight_group = cut(pokemon$weight_kg, breaks = 3, labels = c("léger","moyen","lourd"))
#2
pokemon$height_m_group = cut(pokemon$height_m, breaks =c (0,1,2,3,max(pokemon$height_m, na.rm = TRUE)))
#3

pokemon$defense_group = cut(pokemon$defense, breaks = quantile(pokemon$defense, na.rm = TRUE), include.lowest =  TRUE )









