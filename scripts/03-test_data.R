#### Preamble ####
# Purpose: Tests the cleaned datasets types and values
# Author: Jimmy Luc
# Date: 21 January 2024
# Contact: jimmy.luc@mail.utoronto.ca
# Pre-requisites: Execute 01-download_data.R and 02-data_cleaning.R prior to running this file

#### Workspace setup ####
library(tidyverse)

#### Test data ####
# test data types
class(cleaned_fire_incidents_data$tfs_alarm_time)[1] == "POSIXct"
class(cleaned_fire_incidents_data$tfs_alarm_time)[2] == "POSIXt"

# test data values
min(cleaned_fire_incidents_data$tfs_alarm_time) > as.Date("2010/12/31")
max(cleaned_fire_incidents_data$tfs_alarm_time) < as.Date("2023/01/01")
