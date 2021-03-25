library(shiny)
library(summaryBox)

# Bootstrap 4
theme <- bslib::bs_theme(version = 4)

# UI
ui <- fluidPage(

  theme = theme,
  br(),
  uiOutput("summarybox")

)

# Server
server <- function(input, output, session) {

  output$summarybox <- renderUI({

    fluidRow(
      summaryBox("Earnings (Monthly)", "$40,000", width = 3, icon = "fas fa-calendar", style = "info"),
      summaryBox("Earnings (Annual)", "9332", width = 3, icon = "fas fa-dollar-sign", style = "success"),
      summaryBox("Tasks", "346", width = 3, icon = "fas fa-clipboard-list", style = "danger"),
      summaryBox("Pending Requests", "346", width = 3, icon = "fas fa-comments", style = "primary")
    )

  })

}

# Run App
shinyApp(ui = ui, server = server)
