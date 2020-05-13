library(shiny)

dataTest <- read.csv("TestEch.csv",sep=";",header=TRUE);dataTest
dataRes <- read.csv("TestRes.csv",sep=";",header=TRUE);dataRes

r = sample(1:length(dataTest$Question),1);r

source('ui.R', local = TRUE)
source('server.R')


shinyApp(
  ui = ui,
  server = server
)
  