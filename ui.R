

library(shiny)

shinyUI(
  pageWithSidebar(
    
    headerPanel("Trap/Rap and Artist Recommendation"),
    sidebarPanel(
      textInput('mood', label="What type of mood do you have for the song?(caps off)"),
      textInput('movie', label="Who is your favorite artist? (caps off)"),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Suggested song and rapper'),
      h4('Your mood is'),
      verbatimTextOutput("inputValue"),
      h4('You chose this artist'),
      verbatimTextOutput("inputValue2"),
      h4('Vibe to this '),
      verbatimTextOutput("prediction"),
      h4('You should check this artist out'),
      verbatimTextOutput("prediction2")
    )
  )
)