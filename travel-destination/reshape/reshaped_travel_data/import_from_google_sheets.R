# Load necessary libraries
library(googlesheets4)
library(dplyr)

# Assuming filtered_travel_data is already defined and filtered

# Authenticate with Google (this will prompt you to sign in)
gs4_auth()

# Specify the Google Sheet URL
sheet_url <- "https://docs.google.com/spreadsheets/d/1tbwc7zuVcg3V72DzjFU8F19E7nZ_dsfjYP1ICiqcRcY/edit?gid=0"

reshaped_travel_data <- 
  read_sheet(sheet_url, sheet="reshaped_travel_data")