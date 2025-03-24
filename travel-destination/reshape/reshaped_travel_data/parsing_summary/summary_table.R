library(dplyr)

# Define a function to calculate summary statistics for numeric variables
summarize_numeric <- function(x) {
  tibble(
    Median = median(x, na.rm = TRUE),
    Mean = mean(x, na.rm = TRUE),
    Range = range(x, na.rm = TRUE),
    IQR = IQR(x, na.rm = TRUE)
  )
}

# Create frequency tables for factors
frequency_table_factor1 <- table(reshaped_travel_data$首站抵達地) %>% as.data.frame()
frequency_table_factor2 <- table(reshaped_travel_data$細分) %>% as.data.frame()

# Create a list to store all summaries
summary_list <- list(
  首站抵達地 = frequency_table_factor1,
  細分 = frequency_table_factor2,
  Year = summarize_numeric(reshaped_travel_data$Year),
  Number_of_Travelers = summarize_numeric(reshaped_travel_data$Number_of_Travelers)
)

# Display the summary_list
summary_list
