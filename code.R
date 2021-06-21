library(readr)
library(dplyr)
library(gapminder)
gm <- gapminder::gapminder

# Create a histogram of life expectancy in 1982
ggplot(data = gm %>% filter(year == 1982), aes(x = lifeExp)) + geom_histogram()

# Create a line plot for population in Asia, colored by country. Make the lines a bit thicker and more transparent.
ggplot(data = gm %>% filter(continent == "Asia"), aes(y = pop, x = year, color = country)) + geom_line(size = 1.2, alpha = 0.3) + theme(legend.position = "bottom")

# Add new x and y axis labels, as well as a chart title.
ggplot(data = gm %>% filter(continent == "Asia"), aes(y = pop, x = year, color = country)) + geom_line(size = 1.2, alpha = 0.3) + theme(legend.position = "bottom") + labs(title = "Population in Asia by country", x = "year", y = "population")

# Create a bar chart of all European countries gdp per capita in 2002
ggplot(data = gm %>% filter(continent == "Europe", year == 2002), aes(y = gdpPercap, x = country)) + geom_bar(stat = "identity")
# Make the bars transparent and filled with the color blue.
ggplot(data = gm %>% filter(continent == "Europe", year == 2002), aes(y = gdpPercap, x = country)) + geom_bar(stat = "identity", alpha = 0.4, fill = "blue")
# Create a new data set called the_nineties that only contains years from the 1990s.
the_nineties <- gm %>% filter(year >= 1990 & year <= 1999)

# Save this dataset to your repository (use write.csv)

# Add, commit, and push your files to github

