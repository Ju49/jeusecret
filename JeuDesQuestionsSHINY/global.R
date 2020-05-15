library(shiny)

Agenat <- read.csv2("AgeNat.csv",header = TRUE,sep = ";")

source('ui.R', local = TRUE)
source('server.R')

shinyApp(
  ui = ui,
  server = server
)
  