library(dplyr)

# Summarize total number of travelers for each 細分 place
total_travelers_summary <- reshaped_travel_data %>%
  group_by(細分) %>%                   # Group by 細分 place
  summarise(total_travelers = sum(Number_of_Travelers, na.rm = TRUE)) %>% # Calculate total travelers, ignoring NAs
  arrange(desc(total_travelers))        # Optional: arrange in descending order

# View the summarized data
print(total_travelers_summary)
