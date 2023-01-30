data <- read.csv("ceramic_capacitors.csv")
cap1 <- data[data$Capacitance == "1 pF",]
x <- cap1[cap1$Price == min(cap1$Price),]
out <- paste("Part Number: ", x$MfrPartNum, "Price: ", x$Price)
print(out)
