reshaped_travel_data |>
  summarise(
    `首站抵達地` = list(levels(`首站抵達地`)),  # List unique levels
    `細分` = list(levels(`細分`)),  # List unique levels
    Year_range = paste0(min(Year, na.rm = TRUE), " - ", max(Year, na.rm = TRUE)),  # Year range
    Travelers_min = min(Number_of_Travelers, na.rm = TRUE),
    Travelers_max = max(Number_of_Travelers, na.rm = TRUE),
    Travelers_mean = mean(Number_of_Travelers, na.rm = TRUE),
    Travelers_median = median(Number_of_Travelers, na.rm = TRUE),
    Travelers_NA_count = sum(is.na(Number_of_Travelers))
  ) -> summary_reshaped_travel_data
