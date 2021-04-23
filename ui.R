library(leaflet)
source("global.R")
shinyUI(fluidPage(  
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "station_type", "加油站類別", choices = type),
      selectInput(inputId = "city_choice", "城市", choices = city),   
      selectInput(inputId = "self_help", "自助加油", choices = c("有", "無")),
      submitButton("Submit")
    ),    
    mainPanel(
      h3(textOutput("name", container = span)),
      leafletOutput("mpgPlot")
    )
  )
))