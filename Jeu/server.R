library(shiny)

server <- function(input, output,session){
  
  observeEvent(input$btnRep1,
               #if (output$txtRep1 == "") {
                 output$txtRep1 <- renderText(dataRes[,r])
                # }
               
               #if (output$txtRep1 != "") {
                # output$txtRep2 <- renderText(input$chx)
                 #}
               
                )
  
  
  
 
}
               
  




