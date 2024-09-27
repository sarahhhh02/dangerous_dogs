#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Sarah Lee
# Date: 24 September 2024 
# Contact: sarahhhh.lee@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
install.packages(opendatatoronto)
library(opendatatoronto)
library(tidyverse)
library(dplyr)

#### Download data ####
# get package
package <- show_package("dogs-issued-dangerous-dog-orders")
package

# get all resources for this package
resources <- list_package_resources("dogs-issued-dangerous-dog-orders")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()
data

#### Save data ####
#to save where I want the file to be saved
folder_path <- "/Users/sarahlee/Documents/STA304/dangerous_dogs/dangerous_dogs/data"  # Change this to your desired folder path

# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data, file.path(folder_path, "dangerous_dog_raw.csv")) 