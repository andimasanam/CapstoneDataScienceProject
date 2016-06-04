library('shiny')
library('shinyjs')

# Define UI for application that draws a histogram
ui = fluidPage(
  shinyjs::useShinyjs(),
  shinyjs::inlineCSS(list(.big = "font-size: 2em")),
  div(id = "app",
      h2("Capstone - Final Project Submission"),
      textInput("name", "Input :", ""),
      p('Type up to 2 words in sequence with space as system will auto detect the word(s) and suggest you the best predictive next word in table format.'),
      p("Timestamp: ",
        span(id = "time", date()),
        a(id = "update", "Update", href = "#")
      ),
      actionButton("reset", "Reset form")
  ),
  mainPanel(
    verbatimTextOutput('text1'),
    verbatimTextOutput('text2'),
    br(),
    div(id = "bestMatch", p('The best match next predictive word is :', htmlOutput('text3'))),
    hr(),
    DT::dataTableOutput('table')
  )
)
