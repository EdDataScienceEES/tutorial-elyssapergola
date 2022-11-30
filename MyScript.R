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
ggplot(Tree_Data, aes(x=Year)) +
  geom_line(aes(y = X._real_trees_sold), color = "forestgreen") + # Line for real trees sold, changing color
  geom_line(aes(y = X._fake_trees_sold), color = "red") + # Line for fake trees sold, changing color
  geom_line(aes(y = total_trees_sold), color = "goldenrod1") + # Line for total trees sold, changing color
  ggtitle("Trees Sold Over Time") + # Title
  labs(y = "Number of Trees Sold", x = "Year") # Y and x labels

## Adding a Legend

ggplot(Tree_Data, aes(x=Year)) +
  geom_line(aes(y = X._real_trees_sold, color = "Real Trees Sold")) + # Line for real trees sold, changing color
  geom_line(aes(y = X._fake_trees_sold, color = "Fake Trees Sold")) + # Line for fake trees sold, changing color
  geom_line(aes(y = total_trees_sold, color = "Total Trees Sold")) + # Line for total trees sold, changing color
  ggtitle("Trees Sold Over Time") + # Title
  scale_colour_manual("", breaks = c("Real Trees Sold", "Fake Trees Sold", "Total Trees Sold"), # Making the Legend
  values = c("forestgreen", "red", "goldenrod1")) + # Assigning colors to each of the lines
  labs(y = "Number of Trees Sold", x = "Year") # Y and x labels


# Connected Scatterplot




# Elf Data
Gift_Data <- read.csv("Gift_Data.csv")

ggplot(Elf_Data, aes(x=Year, y=Number_of_Presents_Sally_Got)) + # Year is on the X-axis, Real trees sold is on the y axis
  geom_line() # Makes it a line chart
