library(shiny)

ui <- fluidPage(
  
  textInput ("name", "Indiquez votre prenom"),
  textInput("surname","Votre nom de famille :"),
  dateInput("naissance", "Date de naissance: "),
  selectInput("nationalite", "Quelle est votre nationalite ? ", state.name),
  textAreaInput("job", "Quelle est votre profession?", rows = 4),
  radioButtons("sexe", "Indiquez ci-dessous votre sexe", c("Femme", "Homme")),
  sliderInput("toit", "Indiquez le nombre de personne vivant avec vous sous votre foyer", 
            min = 0, max = 15, value = 0)