# Load necessary libraries
library(dplyr)
library(readr)

# Assume reshaped_travel_data is already defined

# Filter the data
reshaped_travel_data <- reshaped_travel_data %>%
  filter(!(`首站抵達地` == "全區" |
             grepl("合計|總計", `細分`)))

# Save the filtered data to a CSV file
write_csv(reshaped_travel_data, "reshaped_travel_data.csv")
