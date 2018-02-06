# For shiny
library(shiny)

# Header Start ------------------------------------------------------------

header <- dashboardHeader(
  # Title
  title = HTML(paste(
    img(
      src = "01.GSCA_logo_01.png",
      align = "middle",
      class = "img-responsvie",
      style = "height:55px !important;"
    ), ""
  )),
  
  dropdownMenuOutput("infoMenu"),
  
  dropdownMenuOutput("logMenu")
)

# body --------------------------------------
body <- dashboardBody(
  tabItems(
    tabItem(tabName = "about", align = "center",
  fluidRow(
  column(
    width = 12, offset = 0,
    shiny::tags$img(
      src = "01.GSCA_logo_01.png",
      class = "center-block img-responsive",
      style = "height: 150px;"
    ),
    shiny::tags$h1("GSCALite offers you a web-based platform for Gene Set Cancer Analysis.")
  ),
  column(
    width = 4, offset = 4,
    shiny::a(h4("Go to submit", class = "btn btn-default action-button" , 
                style = "fontweight:1000"), target = "_blank",
             href = paste('http://bioinfo.life.hust.edu.cn/web/p',n,'/',sep=''))
  )
)))
)
# random
n <- sample(1:3, size = 1)


ui <- dashboardPage(
  header = header,
  sidebar = dashboardSidebar(),
  body = body
)

server <- function(input, output, session) {}

shinyApp(ui, server)
