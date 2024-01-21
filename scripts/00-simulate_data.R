#### Preamble ####
# Purpose: Simulates the number of fire incidents in Toronto each month in 2022
# Author: Jimmy Luc
# Date: 17 January 2024
# Contact: jimmy.luc@mail.utoronto.ca

#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
# set seed for simulation
set.seed(416)

# create a sequence of dates each representing the beginning
# of the month in 2022
dates <-
  seq(as.Date("2022/1/1"), by = "month", length.out = 12)

# reformat the dates to follow {month}/{year}
dates <-
  format(dates, "%m/%Y")

# simulate the data using the poisson distribution
simulated_data <-
  tibble(
    rpois(
      dates,
      lambda = 250
      ) 
  )