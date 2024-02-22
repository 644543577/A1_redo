library(usethis)
git_default_branch()
# ✔ Setting active project to '/Users/xin/Xin/A1_redo/A1_redo'
# [1] "main"
library(readr)
library(tidyverse)
library(ggplot2)
olympics_data <- read_csv("Olympics.csv")
#a:
largest_teams_1992 <- olympics_data %>%
  filter(year == 1992) %>%
  arrange(desc(athletes)) %>%
  select(country, athletes)

#b:
countries <- c("United States", "France", "Germany", "Russia", "China")
filtered_data <- olympics_data %>%
  filter(country %in% countries)

ggplot(filtered_data, aes(x = year, y = gold, color = country, group = country)) +
  geom_line() +
  geom_point() +
  theme_minimal() +
  labs(title = "Gold Medals Over Time",
       x = "Year",
       y = "Gold Medals") +
  theme(legend.title = element_blank())

