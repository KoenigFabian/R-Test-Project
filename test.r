myData <- fread("/Users/fabianleisibach/Cloud/UZH/Semester 7/R – A non-technical introduction to big data techniques, team work and interactive visualization/data/transactions.csv")
str(myData)
myData[, TransDate:=dmy(TransDate, tz="UTC")]
str(myData)
myData_new <- myData[PurchAmount >= 100 & PurchAmount <=200, list(Customer, Cost)]

myData[Customer %in% c(149332, 172951), ]
