# R/travel-destination/reshape/reshaped_travel_data/parsing_summary/

library(readr)
reshaped_travel_data <- read_csv("data/travel-destination/reshape/reshaped_travel_data/reshaped_travel_data.csv")

# Parsing

library(dplyr)
library(forcats)

# Assuming reshaped_travel_data is your dataset
reshaped_travel_data <- reshaped_travel_data %>%
  mutate(
    `首站抵達地` = as.factor(`首站抵達地`),  # Transforming to factor
    `細分` = as.factor(`細分`),                # Transforming to factor
    Year = as.numeric(Year),                  # Ensuring Year is numeric
    Number_of_Travelers = as.numeric(Number_of_Travelers) # Ensuring travelers count is numeric
  )

glimpse(reshaped_travel_data)

# Summary ----

library(dplyr)
library(tidyr)
library(lubridate)

# Create an empty list to store summaries
summary_list <- list()

# Iterate over each variable in the dataframe
for (variable in names(reshaped_travel_data)) {
  var_data <- reshaped_travel_data[[variable]]
  
  if (is.numeric(var_data)) {
    # Numeric: Mean, Median, SD, Max, Min, Range
    summary_list[[variable]] <- tibble(
      Mean = mean(var_data, na.rm = TRUE),
      Median = median(var_data, na.rm = TRUE),
      SD = sd(var_data, na.rm = TRUE),
      Max = max(var_data, na.rm = TRUE),
      Min = min(var_data, na.rm = TRUE),
      Range = max(var_data, na.rm = TRUE) - min(var_data, na.rm = TRUE)
    )
    
  } else if (is.factor(var_data) || is.ordered(var_data)) {
    # Factor/Ordered Factor: Frequency Table
    summary_list[[variable]] <- as.data.frame(table(var_data))
    
  } else if (is.character(var_data)) {
    # Character: Unique Values, Count
    summary_list[[variable]] <- tibble(
      Unique_Values = n_distinct(var_data),
      Count = length(var_data)
    )
    
  } else if (inherits(var_data, "Date")) {
    # Date: Min, Max, Range
    summary_list[[variable]] <- tibble(
      Min = min(var_data, na.rm = TRUE),
      Max = max(var_data, na.rm = TRUE),
      Range = max(var_data, na.rm = TRUE) - min(var_data, na.rm = TRUE)
    )
    
  } else if (inherits(var_data, "POSIXct") || inherits(var_data, "POSIXt")) {
    # Date/Time: Min, Max, Range, Time Interval
    summary_list[[variable]] <- tibble(
      Min = min(var_data, na.rm = TRUE),
      Max = max(var_data, na.rm = TRUE),
      Range = max(var_data, na.rm = TRUE) - min(var_data, na.rm = TRUE),
      Time_Interval = as.numeric(difftime(max(var_data, na.rm = TRUE), 
                                          min(var_data, na.rm = TRUE), 
                                          units = "days"))
    )
    
  } else if (is.logical(var_data)) {
    # Logical: Frequency Table
    summary_list[[variable]] <- as.data.frame(table(var_data))
    
  } else {
    summary_list[[variable]] <- "Unsupported variable type"
  }
}

# Print the summary list
summary_list

