library(readr)
reshaped_travel_data <- read_csv("travel-destination/reshape/reshaped_travel_data/reshaped_travel_data.csv")

# Parse and clean the dataset
cleaned_data <- reshaped_travel_data %>%
  # Ensure the '首站抵達地' and '細分' columns are factors (nominal categorical variables)
  mutate(
    首站抵達地 = as_factor(首站抵達地),
    細分 = as_factor(細分),
    # Convert 'Year' to a numerical value
    Year = as.numeric(Year),
    # Convert 'Number_of_Travelers' to numeric and handle missing values
    Number_of_Travelers = parse_number(as.character(Number_of_Travelers))
  )


# View the cleaned dataset
glimpse(cleaned_data)
