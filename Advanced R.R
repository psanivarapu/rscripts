
fin <- read.csv("Future-500.csv")
fin
head(fin)
tail(fin)

str(fin)
summary(fin)

fin$ID

factor(fin$ID)

setwd("C:\\Users\\Admin\\Documents\\Personal\\Books\\R\\R Working")
fin <- read.csv("Future-500.csv", na.strings = c(""))
fin$ID <- factor(fin$ID)
fin$Inception <- factor(fin$Inception)

#fin$Profit <- factor(fin$Profit)
#fin$Profit <- as.numeric(fin$Profit)

summary(fin)
str(fin)
head(fin)

fin$Expenses <- gsub(" Dollars", "", fin$Expenses)
fin$Expenses <- gsub(",", "", fin$Expenses)

fin$Revenue <- gsub("\\$", "", fin$Revenue)
fin$Revenue <- gsub(",", "", fin$Revenue)

fin$Growth <- gsub("%", "", fin$Growth)

fin$Expenses <- as.numeric(fin$Expenses)
fin$Revenue <- as.numeric(fin$Revenue)
fin$Growth <- as.numeric(fin$Growth)

head(fin, 24)
complete.cases(fin)
fin[!complete.cases(fin),]

fin[fin$Revenue == 9746272,]
fin[which(fin$Revenue == 9746272),]

fin[fin$Employees == 45,]
fin[which(fin$Employees == 45),]

is.na(fin$Expenses)
fin[is.na(fin$Expenses),]

is.na(fin$Inception)
fin[is.na(is.na(fin$Inception)),]

fin_backup <- fin

fin[!complete.cases(fin),]
fin[!is.na(fin$Industry),]
fin <- fin[!is.na(fin$Industry),]

nrow(fin)
#rownames(fin) <- 1:nrow(fin)
rownames(fin) <- NULL

fin[is.na(fin$State),]
fin[is.na(fin$State) & fin$City == "New York","State"] <- "NY"
fin[c(11, 377),]
fin[is.na(fin$State) & fin$City == "San Francisco","State"] <- "CA"
fin[c(82, 265),]

median(fin[, "Employees"], na.rm = TRUE)
emp_median_retail <-median(fin[fin$Industry == "Retail", "Employees"], na.rm = TRUE)
emp_median_retail
fin[is.na(fin$Employees) & fin$Industry == "Retail",]
fin[is.na(fin$Employees) & fin$Industry == "Retail", "Employees"] <- emp_median_retail
fin[3,]

fin[is.na(fin$Employees) & fin$Industry == "Financial Services",]
emp_median_fins <- median(fin[fin$Industry == "Financial Services", "Employees"], na.rm = TRUE)
emp_median_fins
fin[is.na(fin$Employees) & fin$Industry == "Financial Services",]
fin[is.na(fin$Employees) & fin$Industry == "Financial Services", "Employees"] <- emp_median_fins
fin[330,]

fin[!complete.cases(fin),]
fin[is.na(fin$Growth),]
growth_median <- median(fin[fin$Industry == "Construction", "Growth"], na.rm = TRUE)
growth_median
fin[is.na(fin$Growth) & fin$Industry == "Construction", "Growth"] <- growth_median
fin[8,]

fin[!complete.cases(fin),]
fin[is.na(fin$Revenue),]
revenue_median <- median(fin$Revenue, na.rm = TRUE)
revenue_median
fin[is.na(fin$Revenue) & fin$Industry == "Construction", "Revenue"] <- revenue_median
fin[c(8,42),]

fin[!complete.cases(fin),]
fin[is.na(fin$Expenses),]
expenses_median <- median(fin$Expenses, na.rm = TRUE)
expenses_median
fin[is.na(fin$Expenses), "Expenses"] <- expenses_median
fin[c(8,15,42),]

fin[!complete.cases(fin),]
fin[is.na(fin$Profit),]
profit_median <- median(fin$Profit, na.rm = TRUE)
profit_median
fin[is.na(fin$Profit), "Profit"] <- profit_median
fin[c(8,42),]
