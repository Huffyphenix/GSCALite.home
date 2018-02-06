# For shiny
library(shiny)

# random
n <- sample(1:3, size = 1)

ui <- fluidRow(
  shiny::tags$head(
    shinyWidgets::useSweetAlert(), # For sweet alert
    shinyjs::useShinyjs(), # For shinyjs
    shinyjs::extendShinyjs(script = file.path(config$wd, "www", "js", "gscalite.js")),
    shiny::tags$link(rel = "stylesheet", type = "text/css", href = "css/main.css"),
    shiny::tags$script(type = "text/javascript", src = "js/main.js")
  ),
  mainPanel(
    shiny::tags$img(
      src = "01.GSCA_logo_01.png",
      # align = "center",
      style="display: block; margin-left: auto; margin-right: auto;",
      # class = "center-block img-responsive",
      style = "height: 150px;"
    ),
    shiny::tags$h1("GSCALite offers you a web-based platform for Gene Set Cancer Analysis.",style="display: block; margin-left: auto; margin-right: auto;")
  ),
  column(
    width = 4, offset = 4,
    HTML('<a href="#" class="btn btn-large btn-primary disabled">Primary link</a>'),
    shiny::a(h4("Go to submit", class = "btn btn-default action-button" , 
                style = "fontweight:1000; display: block; margin-left: auto; margin-right: auto;"), target = "_blank",
             href = paste('http://bioinfo.life.hust.edu.cn/web/p',n,'/',sep=''))
  )
)

server <- function(input, output, session) {}


shinyApp(ui, server)
