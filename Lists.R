

getwd()

mutil <- read.csv("Machine-Utilization.csv")
mutil
head(mutil,20)
str(mutil)
summary(mutil)

mutil$Utilization = 1 - mutil$Percent.Idle
mutil$Utilization
head(mutil, 24)

as.POSIXct(mutil$Timestamp, format = "%d/%m/%Y %H:%M")
mutil$POSIXTime <- as.POSIXct(mutil$Timestamp, format = "%d/%m/%Y %H:%M")
head(mutil, 24)

mutil$Timestamp <- NULL
head(mutil, 10)
mutil <- mutil[, c(4, 1, 2, 3)]
head(mutil, 10)

summary(mutil)
RL1 <- mutil[mutil$Machine == "RL1", ]
summary(RL1)
RL1$Machine <- factor(RL1$Machine)
summary(RL1)

mutil_stats_rl1 <- c(min(RL1$Utilization, na.rm = TRUE), 
                     mean(RL1$Utilization, na.rm = TRUE), 
                     max(RL1$Utilization, na.rm = TRUE))
mutil_stats_rl1

mutil_under_90_flag <- length(which(RL1$Utilization < 0.9)) > 0
mutil_under_90_flag

list_rl1 <- list("RL1", mutil_stats_rl1, mutil_under_90_flag)
list_rl1

names(list_rl1)
names(list_rl1) <- c("Machine", "Stats", "LowThreshold")






