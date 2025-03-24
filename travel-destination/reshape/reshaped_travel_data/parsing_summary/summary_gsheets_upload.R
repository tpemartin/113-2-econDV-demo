# Load necessary libraries
library(googlesheets4)
library(dplyr)

# Authenticate Google account
gs4_auth()

# Extract the data frames from summary_results
year_df <- summary_results$Year
number_of_travelers_df <- summary_results$Number_of_Travelers
frequency_table_首站抵達地 <- summary_results$首站抵達地$Frequency_Table
frequency_table_細分 <- summary_results$細分$Frequency_Table

# Specify the Google Sheets URL
sheet_url <- "https://docs.google.com/spreadsheets/d/1tbwc7zuVcg3V72DzjFU8F19E7nZ_dsfjYP1ICiqcRcY/edit?gid=544763957"

# Write each data frame to the specified ranges
sheet_add(ss = sheet_url, sheet="reshaped_travel_data_single_variable_summary")
range_write(data = year_df, ss = sheet_url, sheet = "reshaped_travel_data_single_variable_summary", range="A2")
range_write(data = number_of_travelers_df, ss = sheet_url, sheet = "reshaped_travel_data_single_variable_summary", range = "A5:G6")
range_write(data = frequency_table_首站抵達地, ss = sheet_url, sheet = "reshaped_travel_data_single_variable_summary", range = "I:J")
range_write(data = frequency_table_細分, ss = sheet_url, sheet = "reshaped_travel_data_single_variable_summary", range = "L:M")
