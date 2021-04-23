library(dplyr)
library(leaflet)
shinyServer(function(input, output) {
  output$name <- renderText({
    "Gas Station locate"
  })
  
  output$mpgPlot <- renderLeaflet({
    data = gasStation %>% filter(type==input$station_type, city==input$city_choice, selfHelp==input$self_help)
    UserIcon <- icons(iconUrl = "fuel.png", iconWidth = 40, iconHeight = 40)
    m = leaflet(data =  data) %>% 
      setView(lng = 120.9531863 , lat = 23.7932689, zoom = 7) %>%  #lng = 120.9531863 , lat = 23.7932689
      addTiles() %>% 
      addMarkers(~X, ~Y, popup=~station, icon = UserIcon)
    m
  })
  
})