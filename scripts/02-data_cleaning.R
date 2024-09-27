#### Preamble ####
# Purpose: Cleans the raw dangerous dog incident dataset
# Author: Sarah Lee
# Date: 24 September 2024 
# Contact: sarahhhh.lee@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)

#### Clean data ####
# Call the saved raw data
raw_data <- read_csv("/Users/sarahlee/Documents/STA304/dangerous_dogs/dangerous_dogs/data/dangerous_dog_raw.csv")

# Cleaning the raw data
cleaned_data <- 
  raw_data |>
  mutate(
    year = year(Date_of_Dangerous_Act),
    month = month(Date_of_Dangerous_Act),
    day = day(Date_of_Dangerous_Act) #separating the data into year, month, and day respectively
    ) |>
  rename(
    geographic_area = Forward_Sortation_Area,
    dog_name = Name_of_Dog,
    ward = Ward_Name, 
    bite_type = Bite_Circumstance,
    location_type = Location_of_Incident #rename some of the column names
    ) |>
  mutate(bite_type = ifelse(bite_type == "NAB", "NOT A BITE", bite_type) #Change rows in bite_type to make sure it has the same words
    ) |>
  select(year, month, day, Breed, ward, bite_type, location_type, geographic_area) #pick out columns that will be used

#### Save data ####
write_csv(cleaned_data, "/Users/sarahlee/Documents/STA304/dangerous_dogs/dangerous_dogs/data/dangerous_dog_clean.csv")
 