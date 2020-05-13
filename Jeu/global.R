library(shiny)

dataTest <- read.csv("TestEch.csv",sep=";",header=TRUE);dataTest
#dataLimM <- read.csv("LimiteMot.csv",sep=";",header=TRUE)

source('ui.R', local = TRUE)
source('server.R')

r = sample(1:length(dataTest$Question),1);r

shinyApp(
  ui = ui,
  server = server
)
  