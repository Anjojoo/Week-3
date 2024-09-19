#### Preamble ####
# Perpose: Cleans the raw marriage data into an analysis dataset
# Author: Angel XU
# Date: 19 September 2024
# Contact: anjojoo.xu@mail.utoronto.ca


#### Workspace setup ####
library(tidyverse)


#### Clean Data #####
raw_data <- read_csv("raw_data.csv")

cleaned_data <- 
  raw_data |>
  janitor::clean_names() |>
  
  separate(col = time_period,
            into = c("year", "month"),
            sep = "-") |> 
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-"))
         )

write_csv(cleaned_data, "cleaned_data.csv")

