
ui <- fluidPage(
  # Sitio
  titlePanel("Bolillero Virtual"),
  fluidPage(htmlOutput("DBI_html"),
            fluidRow(
              column(width = 10, offset = 0, # Centers the box in the main area
                     wellPanel(
                       actionButton("botRND", "Click para sortear", class = "btn-primary"),
                       actionButton("botRES", "Reset", class = "btn-success"),
                       hr(), # Horizontal line separator
                       textOutput("randomNum")
                     )
              )
            ),
            htmlOutput("DVI_html")
            )
)
