library(shiny)

ui <- fluidPage(
  
  textInput ("name1", "Indiquez le prénom du 1er joueur"),
  textInput("surname1","Le nom de famille du 1er joueur"),
  selectInput("age1", "Quel est âge du 1er joueur", c(15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)),
  selectInput("nationalite1", "Quelle est la nationalite du 1er joueur ? ", c("Allemande","Anglaise","Américaine","Belge","Française","Italienne","Japonaise","Russe","Suisse")),
  textAreaInput("job1", "Quelle est la profession du 1er joueur?", rows = 4),
  radioButtons("sexe1", "Indiquez ci-dessous le sexe du 1er joueur", c("Femme", "Homme")),
  
  textInput ("name2", "Indiquez le prénom du 2ème joueur"),
  textInput("surname2","Le nom de famille du 2ème joueur:"),
  selectInput("age2", "Quel est âge du 2ème joueur", c(15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)),
  selectInput("nationalite2", "Quelle est la nationalite du 2ème joueur ? ", c("Allemande","Anglaise","Américaine","Belge","Française","Italienne","Japonaise","Russe","Suisse")),
  textAreaInput("job2", "Quelle est la profession du 2ème joueur?", rows = 4),
  radioButtons("sexe2", "Indiquez ci-dessous le sexe du 2ème joueur", c("Femme", "Homme")),
  
  textOutput("joueur"),
  tableOutput ("listejoueurs"),
  textOutput ("info"),
  
  fileInput("file", NULL, accept = c(".csv", ".tsv")),
  tableOutput("head"),
  textOutput("nomtab")
)
  

  
  