# Author: Angel Xu
# Date: 19 September 2024
# Contact: anjojoo.xu@mail.utoronto.ca


#### Workspace setup ####
library(tidyverse)

set.seed(102)

start_date <- as.Date("2017-12-12")
end_date <- as.Date("2023-12-12")

number_of_dates <- 100

data <-
  tibble(
    date = as.Date(runif(n = number_of_dates, min = as.numeric(start_date), 
                         max = as.numeric(end_date)
                         ),
                   origin = "1970-01-01"
                   ),
    number_of_marriage = rpois(n=100, lambda=15)
  )

write_csv(data, "data.csv")

