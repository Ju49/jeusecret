


server <- function(input, output, session) {
  output$joueur <- renderText({
    paste("Joueur :",input$name1, input$surname1, input$age1, input$nationalite1, input$job1, input$sexe1)
  })
  
  output$listejoueurs <- renderTable({
    tabjoueur <- data.frame("Prenom"= c(input$name1,input$name2), "Nom" =c(input$surname1,input$surname2), "Date de naissance"=c(input$age1,input$age2), "Nationalite" = c(input$nationalite1,input$nationalite2), "Profession" = c(input$job1,input$job2),"Sexe"=c(input$sexe1,input$sexe2))
  })
  
  output$head <- renderTable({
    l1 <- list()
    l1 <- read.csv2("joueur", header = TRUE, sep = ",")
    l1
    
  })
  datajoueur <- reactive({
    req(input$file)
    
    ext <- tools::file_ext(input$file$name)
    switch(ext,
           csv = vroom::vroom(input$file$datapath, delim = ","),
           tsv = vroom::vroom(input$file$datapath, delim = "\t"),
           validate("Invalid file; Please upload a .csv or .tsv file")
    )
  })
  
  output$head <- renderTable({
    (datajoueur())
  })
  
  output$nomtab <- renderText({
    names(datajoueur())

  })
  
  output$downloadData <- downloadHandler(
    filename = function() {
      paste(input$tabjoueur, ".csv", sep = "")
    },
    content= function(file){
      write.csv(tabjoueurinput(), file, row.names = FALSE)
    }
  )
} 

