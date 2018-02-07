setwd("/Users/fabianleisibach/Desktop")
myData <- fread("transactions.csv")
str(myData)
myData[, TransDate:=dmy(TransDate, tz="UTC")]
str(myData)
myData_new <- myData[PurchAmount >= 100 & PurchAmount <=200, list(Customer, Cost)]

myData[Customer %in% c(149332, 172951), ]
print("hello")
