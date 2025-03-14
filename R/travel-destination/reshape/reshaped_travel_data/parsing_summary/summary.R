categorical_summary <- cleaned_data %>%
  summarise(
    首站抵達地_summary = list(table(首站抵達地)),
    細分_summary = list(table(細分))
  )

# Bar plot for 首站抵達地
ggplot(cleaned_data, aes(x = 首站抵達地)) +
  geom_bar() +
  labs(title = "Count of Travelers by First Arrival Destination", x = "Arrival Destination", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Bar plot for 細分
ggplot(cleaned_data, aes(x = 細分)) +
  geom_bar() +
  labs(title = "Count of Travelers by Detail", x = "Detail", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

numerical_summary <- cleaned_data %>%
  summarise(
    Year_mean = mean(Year, na.rm = TRUE),
    Year_median = median(Year, na.rm = TRUE),
    Year_min = min(Year, na.rm = TRUE),
    Year_max = max(Year, na.rm = TRUE),
    Year_sd = sd(Year, na.rm = TRUE),
    
    Travelers_mean = mean(Number_of_Travelers, na.rm = TRUE),
    Travelers_median = median(Number_of_Travelers, na.rm = TRUE),
    Travelers_min = min(Number_of_Travelers, na.rm = TRUE),
    Travelers_max = max(Number_of_Travelers, na.rm = TRUE),
    Travelers_sd = sd(Number_of_Travelers, na.rm = TRUE)
  )

# Histogram for Year
ggplot(cleaned_data, aes(Year)) +
  geom_histogram(bins = 30, fill = "blue", alpha = 0.7) +
  labs(title = "Distribution of Travel Years", x = "Year", y = "Frequency")

# Histogram for Number_of_Travelers
ggplot(cleaned_data, aes(Number_of_Travelers)) +
  geom_histogram(bins = 30, fill = "green", alpha = 0.7) +
  labs(title = "Distribution of Number of Travelers", x = "Number of Travelers", y = "Frequency")

library(dplyr)

# Summarize missing data in reshaped_travel_data
missing_summary <- reshaped_travel_data %>%
  summarise(
    missing_values = sapply(., function(x) sum(is.na(x))),
    missing_percentage = sapply(., function(x) mean(is.na(x)) * 100)
  )

# Convert the summary to a data frame and set variable names as row names
missing_summary_df <- as.data.frame(missing_summary)
row.names(missing_summary_df) <- colnames(reshaped_travel_data)

# View the summary of missing data
print(missing_summary_df)
