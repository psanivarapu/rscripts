Games
rownames(Games)

Games["LeBronJames", "2011"]

FieldGoals

Players
round(FieldGoals/Games)

round(MinutesPlayed/Games)

FieldGoals/FieldGoalAttempts

?matplot

matplot(FieldGoals, type = "b", pch = 15:18, col = c(1:4, 6))
legend("bottom", inset = 0.01, legend = Players)

t(FieldGoals)
