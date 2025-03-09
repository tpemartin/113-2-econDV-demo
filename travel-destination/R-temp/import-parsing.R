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
summary

# Install and load knitr
# install.packages("knitr")
library(knitr)

# Generate summary statistics and convert to data frame
summary_stats <- summary(reshaped_data)
summary_df <- as.data.frame.matrix(summary_stats)

# Convert to markdown table
markdown_table <- kable(summary_df, format = "markdown", row.names = FALSE)

# Print the markdown table
print(markdown_table)

# Summary of the number of travelers by year
summary_by_year <- reshaped_data %>%
  group_by(Year) %>%
  summarise(Total_Travelers = sum(Number_of_Travelers, na.rm = TRUE))

# View the summary by year
print(summary_by_year)

library(summarytools)

# Summarizing the data frame
summary_df <- dfSummary(reshaped_data)

# Directly creating a Markdown table from the summary statistics
summary_data <- as.data.frame(summary(summary_df))
markdown_table <- knitr::kable(summary_data, format = "markdown")

# Print or save the Markdown table
cat(markdown_table)
