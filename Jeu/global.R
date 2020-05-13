library(shiny)

#dataLimP <- read.csv("LimitePhrase.csv",sep=";",header=TRUE)
#dataLimM <- read.csv("LimiteMot.csv",sep=";",header=TRUE)

source('ui.R', local = TRUE)
source('server.R')

texte = ""

shinyApp(
  ui = ui,
  server = server
)
  