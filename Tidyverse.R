
install.packages("tidyverse")

library(tidyverse)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))

?mpg

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), colour = "blue") +
  facet_wrap(~class, nrow = 2)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), colour = "blue") +
  facet_wrap(drv ~ cyl, nrow = 2)

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv), colour = "blue")



