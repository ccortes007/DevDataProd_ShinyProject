library(lubridate)
agef <- function(dob, age.day = today(), units = "years", floor = TRUE) {
  calc.age = new_interval(dob, age.day) / duration(num = 1, units = units)
  if (floor) return(as.integer(floor(calc.age)))
  return(calc.age)
}
shinyServer(
  function(input, output) {
    output$dob <- renderPrint({input$dob})
    output$units <- renderText({input$units})
    output$ageC <- renderText({agef(input$dob, units = input$units)})
  }
)