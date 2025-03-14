library(tidyverse)

# Read the CSV file
data <- readr::read_csv("travel-destination/歷年中華民國國民出國目的地人數統計2002-2024.csv")

# Convert all year columns to numeric
data <- data %>%
  mutate(across(starts_with("20"), as.numeric))

# Reshape the data
reshaped_data <- data %>%
  pivot_longer(cols = starts_with("20"), 
               names_to = "Year", 
               values_to = "Number_of_Travelers") %>%
  mutate(Year = as.integer(Year))

# Save the reshaped data as a CSV file
write_csv(reshaped_data, "travel-destination/reshape/reshaped_travel_data.csv")
