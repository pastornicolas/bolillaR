library(shiny)

server <- function(input, output, session) {
  curnumDBI <- reactiveVal(NULL)
  curnumDVI <- reactiveVal(NULL)
  
  observeEvent(input$botRNDdbi, {
    new_num <- sample(1:14, 1)
    curnumDBI(new_num)
  })
  
  observeEvent(input$botRNDdvi, {
    new_num <- sample(1:14, 1)
    curnumDVI(new_num)
  })
  
  observeEvent(input$botRESdbi, {
    curnumDBI(NULL)
  })
  
  observeEvent(input$botRESdvi, {
    curnumDVI(NULL)
  })

  output$rndDBI <- renderText({
    req(curnumDBI())
    paste("Tema Nº:", temasDBI[curnumDBI()])
    })
  
  output$rndDVI <- renderText({
    req(curnumDVI())
    paste("Tema Nº:", temasDVI[curnumDVI()])
  })
  
  output$DBI_html <- renderUI({
    HTML("<div style='font-family:sans-serif'>",
         "<h3><b>Diversidad Biológica I (Cs. Biológicas)</b></h3>",
         "<ol  style='font-size:18px'>",
         "<li>a. Teoría endosimbiótica serial – b. Fungi – c. Alveolata</li>",
         "<li>a. Diversidad y distribución global de los organismos – b. Amoebozoa – c. Basidiomycota</li>",
         "<li>a. Fundamentos de los sistemas de clasificación – b. Ascomycota – c. Excavata (Discoba + Metamonada)</li>",
         "<li>a. Organismos de interés sanitario – b. Archaeplastida – c. Stramenopila</li>",
         "<li>a. Historia evolutiva de la diversidad biológica – b. Cyanobacteria – c. Rhizaria</li>",
         "<li>a. Teoría endosimbiótica serial – b. Ascomycota – c. Excavata (Discoba + Metamonada)</li>",
         "<li>a. Historia evolutiva de la diversidad biológica – b. Stramenopila – c. Fungi</li>",
         "<li>a. Fundamentos de los sistemas de clasificación – b. Cyanobacteria – c. Amoebozoa</li>",
         "<li>a. Organismos de interés sanitario – b. Alveolata – c. Fungi</li>",
         "<li>a. Teoría endosimbiótica serial – b. Excavata (Discoba + Metamonada) – c. Archaeplastida</li>",
         "<li>a. Fundamentos de los sistemas de clasificación – b. Rhizaria – c. Archaeplastida</li>",
         "<li>a. Organismos de interés sanitario – b. Cianobacterias – c. Stramenopila</li>",
         "<li>a. Diversidad y distribución global de los organismos – b. Archaeplastida – c. Fungi</li>",
         "<li>a. Historia evolutiva de la diversidad biológica – b. Basidiomycota – c. Rhizaria</li>",
         "</ol>",
         "</div>")
    })
  
  
  output$DVI_html <- renderUI({
    HTML("<div style='font-family:sans-serif'>",
         "<h3><b>Diversidad Vegetal I (Profesorado Cs. Biológicas)</b></h3>",
         "<ol  style='font-size:18px'>",
         "<li>a. Teoría endosimbiótica serial – b. Chytridiomycota, Mucoromycotina y Glomeromycota – c. Diatomeae</li>",
         "<li>a. Diversidad y distribución global de algas – b. Amoebozoa – c. Basidiomycota</li>",
         "<li>a. Fundamentos de los sistemas de clasificación – b. Ascomycota – c. Rhodophyceae</li>",
         "<li>a. Micorrizas – b. Chlorophyta – c. Stramenopila</li>",
         "<li>a. Líquenes – b. Cianobacteria – c. Marchantiomorpha, Anthocerotophyta y Bryophyta</li>",
         "<li>a. Teoría endosimbiótica serial – b. Ascomycota – c. Dinoflagellata</li>",
         "<li>a. Historia evolutiva de la diversidad biológica – b. Phaeophyceae – c. Ustilaginomycotina y Pucciniomycotina</li>",
         "<li>a. Fundamentos de los sistemas de clasificación – b. Cyanobacteria – c. Peronosporomycetes</li>",
         "<li>a. Líquenes – b. SAR (Stramenopila, Alveolata y Rhizaria) – c. Amoebozoa</li>",
         "<li>a. Teoría endosimbiótica serial – b. Excavata (Discoba + Metamonada) – c. Agaricomycotina</li>",
         "<li>a. Distribución global de algas – b. Marchantiomorpha, Anthocerotophyta y Bryophyta – c. Pezizomycotina</li>",
         "<li>a. Fungi – b. Cianobacterias – c. Diatomeae</li>",
         "<li>a. Taphrinomycotina y Saccharomycotina – b. Archaeplastida – c. Micorrizas</li>",
         "<li>a. Teoría endosimbiótica serial – b. Basidiomycota – c. Phaeophyceae</li>",
         "</ol>",
         "</div>")
  })
  
  temasDBI <- c(
    "1) a. Teoría endosimbiótica serial – b. Fungi – c. Alveolata",
    "2) a. Diversidad y distribución global de los organismos – b. Amoebozoa – c. Basidiomycota",
    "3) a. Fundamentos de los sistemas de clasificación – b. Ascomycota – c. Excavata (Discoba + Metamonada)",
    "4) a. Organismos de interés sanitario – b. Archaeplastida – c. Stramenopila",
    "5) a. Historia evolutiva de la diversidad biológica – b. Cyanobacteria – c. Rhizaria",
    "6) a. Teoría endosimbiótica serial – b. Ascomycota – c. Excavata (Discoba + Metamonada)",
    "7) a. Historia evolutiva de la diversidad biológica – b. Stramenopila – c. Fungi",
    "8) a. Fundamentos de los sistemas de clasificación – b. Cyanobacteria – c. Amoebozoa",
    "9) a. Organismos de interés sanitario – b. Alveolata – c. Fungi",
    "10) a. Teoría endosimbiótica serial – b. Excavata (Discoba + Metamonada) – c. Archaeplastida",
    "11) a. Fundamentos de los sistemas de clasificación – b. Rhizaria – c. Archaeplastida",
    "12) a. Organismos de interés sanitario – b. Cianobacterias – c. Stramenopila",
    "13) a. Diversidad y distribución global de los organismos – b. Archaeplastida – c. Fungi",
    "14) a. Historia evolutiva de la diversidad biológica – b. Basidiomycota – c. Rhizaria"
    )
  
  temasDVI <- c(
    "1) a. Teoría endosimbiótica serial – b. Chytridiomycota, Mucoromycotina y Glomeromycota – c. Diatomeae",
    "2) a. Diversidad y distribución global de algas – b. Amoebozoa – c. Basidiomycota",
    "3) a. Fundamentos de los sistemas de clasificación -b. Ascomycota – c. Rhodophyceae",
    "4) a. Micorrizas – b. Chlorophyta – c. Stramenopila",
    "5) a. Líquenes – b. Cianobacteria – c. Marchantiomorpha, Anthocerotophyta y Bryophyta",
    "6) a. Teoría endosimbiótica serial – b. Ascomycota – c. Dinoflagellata",
    "7) a. Historia evolutiva de la diversidad biológica – b. Phaeophyceae – c. Ustilaginomycotina y Pucciniomycotina",
    "8) a. Fundamentos de los sistemas de clasificación – b. Cyanobacteria – c. Peronosporomycetes",
    "9) a. Líquenes – b. SAR (Stramenopila, Alveolata y Rhizaria) – c. Amoebozoa",
    "10) a. Teoría endosimbiótica serial – b. Excavata (Discoba + Metamonada) – c. Agaricomycotina",
    "11) a. Distribución global de algas – b. Marchantiomorpha, Anthocerotophyta y Bryophyta – c. Pezizomycotina",
    "12) a. Fungi – b. Cianobacterias – c. Diatomeae",
    "13) a. Taphrinomycotina y Saccharomycotina – b. Archaeplastida – c. Micorrizas",
    "14) a. Teoría endosimbiótica serial – b. Basidiomycota – c. Phaeophyceae"
    )
  
  }