library(shiny)

dataTest <- read.csv("TestEch.csv",sep=";",header=TRUE);dataTest
dataRes <- read.csv("TestRes.csv",sep=";",header=TRUE);dataRes

source('ui.R', local = TRUE)
source('server.R')

r = sample(1:length(dataTest$Question),1);r

shinyApp(
  ui = ui,
  server = server
)
  