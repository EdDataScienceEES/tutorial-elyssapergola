# Install Packages
install.packages("dplyr")
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("readr")

# Libraries
library(dplyr)
library(tidyverse)
library(ggplot2)
library(readr)
library(gridExtra)

data <- read.csv("Christmas_Tree.csv")

# Simple Line Chart
ggplot(data, aes(x=Year, y=X._real_trees_sold)) +
  geom_line()

# Line Chart with all three trakced
ggplot(data, aes(x=Year)) +
  geom_line(aes(y = X._real_trees_sold), color = "darkred") +
  geom_line(aes(y = X._fake_trees_sold), color = "steelblue") +
  geom_line(aes(y = total_trees_sold), color = "steelblue")
