#### Preamble ####
# Purpose: Downloads and saves the data from the opendatatoronto r package
# Author: Jimmy Luc
# Date: 21 January 2024
# Contact: jimmy.luc@mail.utoronto.ca

#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
# retrieve package id
dataset <-
  search_packages("fire incidents")

# retrieve resource id
dataset <-
  list_package_resources(dataset$id) |> first()

# retrieve dataset
raw_fire_incidents_data <- get_resource(dataset$id)


#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(
  raw_fire_incidents_data,
  "inputs/data/toronto_fire_incidents.csv"
)

