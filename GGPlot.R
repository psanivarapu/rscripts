library(tidyverse)
mtcars

ggplot(mpg, aes(x = hwy, y = cyl)) +
  geom_point()

ggplot(mpg, aes(x = class, y = drv)) +
  geom_point()

str(mtcars)
summary(mtcars)
