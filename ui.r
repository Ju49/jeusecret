library(datasets)
library(shiny)


ui <- fluidPage(
  textInput ("name1", "Indiquez le prenom du 1er joueur"),
  textInput("surname1","Le nom de famille du 1er joueur:"),
  selectInput("age1", "Quel est l age du 1er joueur", c(15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)),
  selectInput("nationalite1", "Quelle est la nationalite du 1er joueur ? ", c("Allemande","Anglaise","Americaine","Belge","Francaise","Italienne","Japonaise","Russe","Suisse")),
  textAreaInput("job1", "Quelle est la profession du 1er joueur?", rows = 4),
  radioButtons("sexe1", "Indiquez ci-dessous le sexe du 1er joueur", c("Femme", "Homme")),
  
  textInput ("name2", "Indiquez le prenom du 2eme joueur"),
  textInput("surname2","Le nom de famille du 2eme joueur:"),
  selectInput("age2", "Quel est age du 2eme joueur", c(15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)),
  selectInput("nationalite2", "Quelle est la nationalite du 2eme joueur ? ", c("Allemande","Anglaise","Americaine","Belge","Francaise","Italienne","Japonaise","Russe","Suisse")),
  textAreaInput("job2", "Quelle est la profession du 2eme joueur?", rows = 4),
  radioButtons("sexe2", "Indiquez ci-dessous le sexe du 2eme joueur", c("Femme", "Homme")),
  
  textOutput("joueur"),
  tableOutput ("listejoueurs"),
  textOutput ("info"),
  
  downloadButton ("downloadData", "Telechargement"),
  
  fileInput("file", NULL, accept = c(".csv", ".tsv")),
  tableOutput("head"),
  textOutput("nomtab")
) 