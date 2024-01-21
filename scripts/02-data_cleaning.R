#### Preamble ####
# Purpose: Cleans the raw fire incident data from opendatatoronto r package
# Author: Jimmy Luc
# Date: 17 January 2024
# Contact: jimmy.luc@mail.utoronto.ca
# Pre-requisites: Execute 01-download_data.R prior to running this file

#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Clean data ####
# load in raw data
raw_fire_incidents_data <-
  read_csv(
    "inputs/data/toronto_fire_incidents.csv"
    )

# clean the names and select column of interest
cleaned_fire_incidents_data <-
  clean_names(raw_fire_incidents_data) |>
  select(
    tfs_alarm_time
    )

# filter data in the year of 2022
cleaned_fire_incidents_data <- 
  cleaned_fire_incidents_data[format(cleaned_fire_incidents_data$tfs_alarm_time,
                                     "%Y") == "2022", ]

# reorder data in descending order
cleaned_fire_incidents_data <- cleaned_fire_incidents_data[order(
  as.Date(cleaned_fire_incidents_data$tfs_alarm_time, format="%Y/%m/%d")
  ), ]

#### Save data ####
write_csv(
  cleaned_fire_incidents_data,
  "outputs/data/cleaned_fire_incidents_data.csv"
)
