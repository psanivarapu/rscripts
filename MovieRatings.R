library(ggplot2)
install.packages("ggplot2")

movie_data <- read.csv(file.choose())
colnames(movie_data) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movie_data)
tail(movie_data)
str(movie_data)
levels(movie_data$Genre)
summary(movie_data)

factor(movie_data$Year)
movie_data$Year <- factor(movie_data$Year)
levels(movie_data$Year)
str(movie_data)

library(ggplot2)

ggplot(data = movie_data, aes(x = CriticRating, y = AudienceRating)) + geom_point()
ggplot(data = movie_data, aes(x = CriticRating, y = AudienceRating, colour = Genre)) + geom_point()
ggplot(data = movie_data, aes(x = CriticRating, y = AudienceRating, colour = Genre, size = Genre)) + geom_point()
ggplot(data = movie_data, aes(x = CriticRating, y = AudienceRating, colour = Genre, size = BudgetMillions)) + geom_point()
ggplot(data = movie_data, aes(x = CriticRating, y = AudienceRating, colour = Genre, shape = Genre)) + geom_point()
ggplot(data = movie_data, aes(x = CriticRating, y = AudienceRating, colour = Genre, shape = Genre, size = BudgetMillions)) + geom_point()

plot_data <- ggplot(data = movie_data, aes(x = CriticRating, y = AudienceRating, colour = Genre, shape = Genre, size = BudgetMillions))

plot_data + geom_point(aes(size = CriticRating))
plot_data + geom_point(aes(colour = BudgetMillions))

plot_data + geom_line(size = 1) + geom_point()

data_for_geom <- ggplot(data = movie_data, aes(x = BudgetMillions))
data_for_geom + geom_histogram(binwidth = 2)
data_for_geom + geom_histogram(binwidth = 2, fill = "Green")
data_for_geom + geom_histogram(binwidth = 2, aes(colour = Genre))
data_for_geom + geom_histogram(binwidth = 5, aes(fill = Genre), colour = "Black")

data_for_geom + geom_density()
data_for_geom + geom_density(aes(fill = Genre))
data_for_geom + geom_density(aes(fill = Genre), position = "stack")

t <- ggplot(data = movie_data, aes(x = AudienceRating))

t + geom_histogram(binwidth = 10,
                   fill = "White",
                   colour = "Blue")

t + geom_histogram(binwidth = 10, 
                   aes(x = CriticRating),
                   fill = "White",
                   colour = "Blue")

?geom_smooth

u <- ggplot(data = movie_data, aes(x = CriticRating, y = AudienceRating, colour = Genre))
u + geom_point() + geom_smooth(fill = NA)

u <- ggplot(data = movie_data, aes(x = Genre, y = AudienceRating, colour = Genre))
u + geom_boxplot(size = 1.2)
u + geom_boxplot(size = 1.2) + geom_point()
u + geom_boxplot(size = 1.2) + geom_jitter()
u + geom_jitter() + geom_boxplot(size = 1.2, alpha = 0.5)

v <- ggplot(data = movie_data, aes(x = BudgetMillions))
v + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black")

v + geom_histogram(binwidth = 10,
                   aes(fill = Genre),
                   colour = "Black") + facet_grid(Genre~., scales = "free")

w <- ggplot(data = movie_data, aes(x = CriticRating, y = AudienceRating, colour = Genre))
w + geom_point() + facet_grid(Genre~.)
w + geom_point() + facet_grid(.~Year)
w + geom_point() + geom_smooth() + facet_grid(Genre~Year)










