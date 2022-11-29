# Install Packages
install.packages("dplyr")
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("readr")
install.packages("gridextra")
install.packages("rmarkdown")

# Libraries
library(dplyr)
library(tidyverse)
library(ggplot2)
library(readr)
library(gridExtra)
library(rmarkdown)

Tree_Data <- read.csv("Christmas_Tree.csv") # Loading Tree Data

## Simple Line Chart
ggplot(Tree_Data, aes(x=Year, y=X._real_trees_sold)) + # Year is on the X-axis, Real trees sold is on the y axis
  geom_line() # Makes it a line chart

## Line Chart with all three trakced
ggplot(Tree_Data, aes(x=Year)) +
  geom_line(aes(y = X._real_trees_sold)) +
  geom_line(aes(y = X._fake_trees_sold)) +
  geom_line(aes(y = total_trees_sold))

## Add a title
ggplot(Tree_Data, aes(x=Year)) +
  geom_line(aes(y = X._real_trees_sold)) + # Line for real trees sold
  geom_line(aes(y = X._fake_trees_sold)) + # Line for fake trees sold
  geom_line(aes(y = total_trees_sold)) + # Line for total trees sold
  ggtitle("Trees Sold Over Time") # Title

## Add x and y axis labels
ggplot(Tree_Data, aes(x=Year)) +
  geom_line(aes(y = X._real_trees_sold)) + # Line for real trees sold
  geom_line(aes(y = X._fake_trees_sold)) + # Line for fake trees sold
  geom_line(aes(y = total_trees_sold)) + # Line for total trees sold
  ggtitle("Trees Sold Over Time") + # Title
  labs(y = "Number of Trees Sold", x = "Year") # Y and x labels

## Adding Colors To The Lines



## Adding a Legend



# Connected Scatterplot
