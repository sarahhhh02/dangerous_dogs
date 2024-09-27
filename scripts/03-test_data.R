#### Preamble ####
# Purpose: Tests cleaned data
# Author: Sarah Lee
# Date: 24 September 2024
# Contact: sarahhhh.lee@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)

#### Test data ####

# Call cleaned data
clean_data <- read_csv("/Users/sarahlee/Documents/STA304/dangerous_dogs/dangerous_dogs/data/dangerous_dog_clean.csv")

# Test 1: Check class of variables 

## Check if it is numbers
is.numeric(clean_data$year)
is.numeric(clean_data$month)
is.numeric(clean_data$day)

## Check if its a string
is.character(clean_data$Breed)
is.character(clean_data$ward)
is.character(clean_data$bite_type)
is.character(clean_data$location_type)

# Test 2: Check that bite_type only returns "VERY SEVERE", "SEVERE", "NON SEVERE" OR "NOT A BITE"
unique(clean_data$bite_type)
