library(tidyverse)

# Import the reshaped data
reshaped_data <- read_csv("travel-destination/reshaped_travel_data.csv")

# Parse variables according to the codebook
reshaped_data <- reshaped_data %>%
  mutate(`首站抵達地` = as.factor(`首站抵達地`),
         `細分` = as.factor(`細分`),
         Year = as.integer(Year),
         Number_of_Travelers = as.numeric(Number_of_Travelers))

# Summary of the reshaped data
summary(reshaped_data)

# Summary of the number of travelers by year
summary_by_year <- reshaped_data %>%
  group_by(Year) %>%
  summarise(Total_Travelers = sum(Number_of_Travelers, na.rm = TRUE))

# View the summary by year
print(summary_by_year)