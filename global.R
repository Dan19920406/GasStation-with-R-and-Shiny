library(dplyr)
tmp = read.csv("加油站服務資訊.csv",sep=',',header=T)
gasStation = tmp %>% select(類別,站名,縣市,地址,營業中,刷卡自助,經度,緯度) %>% filter(營業中=='TRUE')
colnames(gasStation) = c('type','station','city','addr','isOpen','selfHelp','X','Y')
gasStation[gasStation$selfHelp == '1','selfHelp'] = '有'
gasStation[gasStation$selfHelp == '0','selfHelp'] = '無'
type = unique(gasStation$type)
city = unique(gasStation$city)





