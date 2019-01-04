library(shiny)

ui <- fluidPage(
  titlePanel(h1("Deploying a R Shiny application through AWS")),
  sidebarLayout(
    sidebarPanel(
      sliderInput(inputId = "bins", label = "Choose number of age groups",value = 28, min = 0, max = 80 )),
    mainPanel(strong(em("This data has been extracted from http://kic.kdheks.gov/LifeExptncy.html#top")),p("The Office of Vital Statistics in Kansas, part of the KDHE Bureau of Epidemiology and Public Health Informatics, partnered with the National Center for Health Statistics (NCHS) to produce life expectancy estimates - or the average number of years a person can expect to live - in each census tract in the United States. Six years of data was used 2010-2015, for the calculations of this indicator, which is most widely identified as the ideal measure of a population’s mortality experience is life expectancy at birth. For more information, see the brief below"),plotOutput("hist"))
      ))

server <- function(input,output){  output$hist <- renderPlot({
  
  x    <- a$e.0.
  bins <- seq(min(x), max(x), length.out = input$bins + 1)
  
  hist(x, breaks = bins, col = "pink", border = "white",
       xlab = "Number of Age groups",
       main = "Histogram of Life Expectancy")
})

}

shinyApp(ui = ui, server = server)