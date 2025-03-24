library(dplyr)
library(tidyr)

# Assuming 'reshape_travel_data' is your data frame
summarize_travel_data <- function(data) {
  # Initialize an empty list to store results
  summary_list <- list()
  
  # Summary for 首站抵達地 (Destination region)
  destination_summary <- data %>%
    group_by(首站抵達地) %>%
    summarise(Count = n()) %>%
    ungroup()
  
  summary_list$首站抵達地 <- list(
    Frequency_Table = destination_summary,
    NA_Proportion = sum(is.na(data$首站抵達地)) / nrow(data)
  )
  
  # Summary for 細分 (Country)
  country_summary <- data %>%
    group_by(細分) %>%
    summarise(Count = n()) %>%
    ungroup() 
  
  summary_list$細分 <- list(
    Frequency_Table = country_summary,
    NA_Proportion = sum(is.na(data$細分)) / nrow(data)
  )
  
  # Summary for Year
  year_summary <- data %>%
    summarise(
      Mean = mean(Year, na.rm = TRUE),
      Median = median(Year, na.rm = TRUE),
      SD = sd(Year, na.rm = TRUE),
      Max = max(Year, na.rm = TRUE),
      Min = min(Year, na.rm = TRUE),
      Range = Max - Min,
      NA_Proportion = sum(is.na(Year)) / nrow(data)
    )
  
  summary_list$Year <- year_summary
  
  # Summary for Number_of_Travelers
  travelers_summary <- data %>%
    summarise(
      Mean = mean(Number_of_Travelers, na.rm = TRUE),
      Median = median(Number_of_Travelers, na.rm = TRUE),
      SD = sd(Number_of_Travelers, na.rm = TRUE),
      Max = max(Number_of_Travelers, na.rm = TRUE),
      Min = min(Number_of_Travelers, na.rm = TRUE),
      Range = Max - Min,
      NA_Proportion = sum(is.na(Number_of_Travelers)) / nrow(data)
    )
  
  summary_list$Number_of_Travelers <- travelers_summary
  
  return(summary_list)
}

# Call the function on your data frame
summary_results <- summarize_travel_data(reshaped_travel_data)


