library(shiny)

server <- function(input, output,session){
  
  #col <- as.numeric(input$repUser)
  
  observeEvent(input$btnRep1,
                output$txtRep1 <- renderText(dataRes[r,isolate(input$repUser+1)])
               )
}
               
  




