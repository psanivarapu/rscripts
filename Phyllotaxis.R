# This sets plot images to a nice size.
options(repr.plot.width = 4, repr.plot.height = 4)

# Loading in the ggplot2 package
library(ggplot2)

# Let's start by drawing 50 points on a circle of radius 1.
# As every (x, y) point should be in the unit circle, 
# it follows that x² + y² = 1.
# We can get this using the superfamous Pythagorean trigonometric identity
# which states that sin²(??) + cos²(??) = 1 for any real number ??.
t <- seq(0, 2*pi, length.out = 50)
t
x <- sin(t)
x
y <- cos(t)
y
df <- data.frame(t, x, y)
df

# Make a scatter plot of points in a circle
p <- ggplot(df, aes(x, y))
p + geom_point()

# Defining the number of points
points <- 500

# Defining the Golden Angle
angle <- pi * (3 - sqrt(5))

t <- (1:points) * angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Make a scatter plot of points in a spiral
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(mapping = aes(size = df$t, alpha = 0.1, color = "yellow"), shape = 8) +
  theme(panel.background = element_rect(fill = "white")) +
  theme(axis.ticks = element_line(size = 0)) +
  theme(axis.text = element_text(size = 0)) +
  theme(axis.title.x = element_text(size = 0), axis.title.y = element_text(size = 0)) +
  theme(panel.grid = element_line(size = 0)) +
  theme(legend.position = "none")

# Changing the angle and building another star
angle <- 13 * pi/180
points <- 2000

t <- (1:points)*angle
x <- sin(t)
y <- cos(t)

df <- data.frame(t, x, y)

p <- ggplot(df, aes(x*t, y*t))
p + geom_point(size = t, alpha = 0.1, color = "magenta", shape = 1) +
  theme(panel.background = element_rect(fill = "white")) +
  theme(axis.ticks = element_line(size = 0)) +
  theme(axis.text = element_text(size = 0)) +
  theme(axis.title.x = element_text(size = 0), axis.title.y = element_text(size = 0)) +
  theme(panel.grid = element_line(size = 0)) +
  theme(legend.position = "none")

# Changing the angle and building another star
angle <- 2.0
points <- 2000

t <- (1:points)*angle
x <- sin(t)
y <- cos(t)

df <- data.frame(t, x, y)

p <- ggplot(df, aes(x*t, y*t))
p + geom_point(size = t, alpha = 0.1, color = "magenta", shape = 1) +
  theme(panel.background = element_rect(fill = "white")) +
  theme(axis.ticks = element_line(size = 0)) +
  theme(axis.text = element_text(size = 0)) +
  theme(axis.title.x = element_text(size = 0), axis.title.y = element_text(size = 0)) +
  theme(panel.grid = element_line(size = 0)) +
  theme(legend.position = "none")
