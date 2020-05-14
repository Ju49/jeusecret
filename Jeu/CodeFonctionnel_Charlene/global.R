library(shiny)

#dataOrigin <- read.csv("TestEch.csv",sep=";",header=TRUE);dataOrigin
#dataTest <- dataOrigin[sample(1:nrow(dataOrigin),5),];dataTest

source('ui.R', local = TRUE)
source('server.R')


shinyApp(
  ui = ui,
  server = server
)
  