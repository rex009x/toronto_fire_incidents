#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Jimmy Luc
# Date: 17 January 2024
# Contact: jimmy.luc@mail.utoronto.ca

#### Workspace setup ####
library(tidyverse)

#### Test data ####
class(cleaned_fire_incidents_data$tfs_alarm_time)[1] == "POSIXct"
class(cleaned_fire_incidents_data$tfs_alarm_time)[2] == "POSIXt"