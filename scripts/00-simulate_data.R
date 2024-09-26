#### Preamble ####
# Purpose: Simulates... [...UPDATE THIS...]
# Author: Sarah Lee
# Date: 26 September 2024
# Contact: sarahhhh.lee@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)
library(dplyr)

#### Simulate data ####
# Set seed 
set.seed(123)

# Number of records to simulate
num_records <- 100  

# Sample date
years <- sample(2017:2024, num_records, replace = TRUE)  # Random years from 2017 to 2024
months <- sample(1:12, num_records, replace = TRUE)  # Random months from 1 to 12
days <- sample(1:31, num_records, replace = TRUE)  # Random days 

# Sample of breeds
breeds <- c("BEAGLE MIX", "AKITA", "CANE CORSO", "GOLDEN RETR", 
            "GERM SHEPHERD", "ALASKAN HUSKY MIX", "AUST SHEPHERD", 
            "ROTTWEILER", "POODLE", "BOXER")

# Sample of ward areas
wards <- c("Parkdale-High Park", "York Centre", "Don Valley West", 
           "Etobicoke North", "Scarborough-Rouge Park", "York South-Weston", 
           "Scarborough North", "Toronto-St. Paul's", "Scarborough-Guildwood", 
           "Toronto-Danforth")

# List of severity of dog bites
bite_type <- c("VERY SEVERE", "SEVERE", "NON SEVERE", "NOT A BITE")

# Sample of public vs. private loactions
location_type <- c("PUBLIC PROPERTY", "PARK - LEASH REQUIRED AREA", 
                   "OWNERS PROPERTY", "PARK - LEASH FREE AREA", 
                   "OTHER PRIVATE PROPERTY")

# sample of postal codes
geographic_area <- c("M6R", "M3M", "M4N", "M9W", "M1E", 
                     "M6L", "M3H", "M1B", "M2R", "M1W")


# Create the dataset as a data frame
simulated_data <- data.frame(
  year = years,
  month = months,
  day = days,
  Breed = sample(breeds, num_records, replace = TRUE),
  ward = sample(wards, num_records, replace = TRUE),
  bite_type = sample(bite_type, num_records, replace = TRUE),
  location_type = sample(location_type, num_records, replace = TRUE),
  geographic_area = sample(geographic_area, num_records, replace = TRUE)
)

# Display the first few rows of the simulated dataset
head(simulated_data)
