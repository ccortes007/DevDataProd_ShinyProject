shinyUI(
  pageWithSidebar(
    headerPanel("Age Calculator (Your age expressed differently)"),
    sidebarPanel(
      h3("Instructions:"),
      dateInput("dob", "1. Enter your birthdate YYYY-MM-DD"),
      checkboxGroupInput("units", "2. Check the result units",
                         c("Years" = "years",
                           "Months" = "months",
                           "Days" = "days",
                           "Hours" = "hours",
                           "Minutes" = "minutes",
                           "Seconds" = "seconds")),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of calculation'),
      h4('You entered'),
      verbatimTextOutput("dob"),
      h4('That means you are'),
      verbatimTextOutput("ageC"),
      verbatimTextOutput("units"),
      h4('old')
    )
  )
)