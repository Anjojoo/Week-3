#### Preamble ####
# Perpose: Sanity check of the data
# Author: Angel XU
# Date: 19 September 2024
# Contact: anjojoo.xu@mail.utoronto.ca


#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read.csv("data.csv")


#### Test for negative numbers ####
data$number_of_marriage |> min() <= 0


#### Test for NAs ####
all(is.na(data$number_of_marriage))