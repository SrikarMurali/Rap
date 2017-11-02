
library(shiny)

MusicPred <- function(mood){
  if (mood=="happy") "Versatile by Kodak"
  else if (mood=="sad") "Suicidal Thoughts By The Notorious B.I.G."
  else if (mood=="vibe") "Acid Rain by Chance the Rapper"
  else if (mood=="angry") "Hard in da Paint by Waka Flocka Flame"
  else if (mood=="lit") "Ok Dexter by Famous Dex"
  else if (mood=="mood") "Problems by 6lack "
  else if (mood=="confused") "Really Doe by Danny Brown"
  else if (mood=="depressed") "All I Got is You by GhostFace Killah"
  else if (mood=="energetic") "Moon Walkin by Rich the Kind"
  else if (mood=="lean") "Met Gala by Gucci Mane"
  else if (mood=="high") "Marijuana by Kid Cudi"
  else if (mood=="lazy") "Kyoto by Yung Lean"
  else if (mood=="chill") "Gold by Brockhampton"
  else "Anything by Kendrick Lamar"
}

MoviePred <- function(movie){
  if (movie=="50 Cent") "Schoolboy Q"
  else if (movie=="Rakim") "Nas"
  else if (movie=="DMX") "A$AP Ferg"
  else if (movie=="Tupac") "Freddie Gibbs"
  else if (movie=="Snoop Dogg") "Wiz Khalifa"
  else if (movie=="Nas") "Joey Bada$$"
  else if (movie=="Ghostface Killah") "Action Bronson"
  else if (movie=="Biggie Smalls") "Rick Ross"
  else if (movie=="Slick Rick") "Two Chainz"
  else if (movie=="Andre 3000") "Raury"
  else if (movie=="Eazy-E") "Tay-K"
  else if (movie=="LL Cool J") "Drake"
  else if (movie=="Pimp C") "A$AP Rocky"
  else if (movie=="Lil Wayne") "Kodak Black"
  else if (movie=="MF Doom") "Earl Sweatshirt"
  else if (movie=="Ol' Dirty Bastard") "Danny Brown"
  else if (movie=="Chief Keef") "Fredo Santana"
  else "Kendrick Lamar"
}


shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$mood})
    output$prediction <- renderPrint({MusicPred(input$mood)})
    
    output$inputValue2 <- renderPrint({input$movie})
    output$prediction2 <- renderPrint({MoviePred(input$movie)})
  }
)