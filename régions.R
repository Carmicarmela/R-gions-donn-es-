

#Continuer le Tp
#A partir de geoapi, esssayer de faire un code qui nous permet d'avoir la liste des nom et code de l'ensemble des regions.
#Créer le projet api_r sur votre compte git
#Enregistrer vos données sur un fichier SCV 
#Envoyer le projet local sur votre compte git 
#M'inviter sur votre projet( mail: senemameastou@gmail.com)
#Envoyer un mail une fois que vous avez terminé.

# Exo 






library(jsonlite)

# Récupération des données depuis l'API
data <- fromJSON("https://geo.api.gouv.fr/regions?")

# Créeation d'un dataframe avec les données
donnees <- data.frame(
  Region_ID = sapply(data, function(x) if ("id" %in% names(x)) x[["id"]] else NA),
  Region_Nom = sapply(data, function(x) if ("nom" %in% names(x)) x[["nom"]] else NA),
  Region_Code = sapply(data, function(x) if ("code" %in% names(x)) x[["code"]] else NA),
  stringsAsFactors = FALSE

)

get_donnees_regions <- function(){
url <- "https://geo.api.gouv.fr/regions?"
result <- fromJSON(url)
return(result)
}

donnees_regions <- get_donnees_regions()

print(donnees_regions)

write.csv(donnees_regions, file = "donnees_regions.csv", row.names=FALSE)





  




