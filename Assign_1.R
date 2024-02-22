library(usethis)
git_default_branch()
# ✔ Setting active project to '/Users/xin/Xin/A1_redo/A1_redo'
# [1] "main"

library(readr)
library(tidyverse)
library(ggplot2)
olympics_data <- read.csv("Olympics.csv")
# a
olympics_data_1 <- olympics_data %>%
  mutate(total.medals = gold + silver + bronze)

# b
olympics_data_2 <- olympics_data %>%
  group_by(country) %>%
  summarize(total_gold = sum(gold))

# c
olympics_data_3 <- olympics_data_1 %>%
  group_by(year) %>%
  summarize(total_medals = sum(total.medals))
