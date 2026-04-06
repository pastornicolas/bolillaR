ui <- fluidPage(
  tags$head(
    tags$style(HTML("
  button#botRNDdbi {
    height: 5vw;
    width: 22vw;
    margin-top: 2vw;
    background-color: darkcyan;
    border-radius: 20px;
    color: white;
    font-size: 2vw;
    font-weight: bold;
    font-family: sans-serif;
    vertical-align: middle;
  }
  
  button#botRNDdvi {
    height: 5vw;
    width: 22vw;
    margin-top: 2vw;
    background-color: darkcyan;
    border-radius: 20px;
    color: white;
    font-size: 2vw;
    font-weight: bold;
    font-family: sans-serif;
    vertical-align: middle;
    }
                    
  button#botRESdbi {
    height: 5vw;
    width: 22vw;
    margin-top: 2vw;
    background-color: firebrick;
    border-radius: 20px;
    color: white;
    font-size: 2vw;
    font-weight: bold;
    font-family: sans-serif;
    vertical-align: middle;
    }
     
  button#botRESdvi {
    height: 5vw;
    width: 22vw;
    margin-top: 2vw;
    background-color: firebrick;
    border-radius: 20px;
    color: white;
    font-size: 2vw;
    font-weight: bold;
    font-family: sans-serif;
    vertical-align: middle;
    }"
    ))
  ),
    # Sitio
  titlePanel("Bolillero Virtual"),
  htmlOutput("DBI_html"),
  fluidRow(
    column(width = 10, offset = 0,
           wellPanel(
           div(style="display: flex;
           justify-content: center;
               gap: 20px;",
               actionButton("botRNDdbi", "Click para sortear"),
               actionButton("botRESdbi", "Resetear bolilla")
               ),
           hr(),
           div(style = "font-size: 2vw; font-weight: bold; text-align: center;",
               textOutput("rndDBI")
               ),
           )
           )
    ),
  hr(style = "height: 2px; background-color: gray; border: black;"),
  hr(style = "height: 2px; background-color: gray; border: black;"),
  htmlOutput("DVI_html"),
  fluidRow(
    column(width = 10, offset = 0,
           wellPanel(
           div(style="display: flex;
           justify-content: center;
               gap: 20px;",
               actionButton("botRNDdvi", "Click para sortear"),
               actionButton("botRESdvi", "Resetear bolilla")
               ),
           hr(),
           div(style = "font-size: 2vw; font-weight: bold; text-align: center;",
               textOutput("rndDVI")
               ),
           )
           )
    )
  )

