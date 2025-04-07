library(dplyr)

# Create summary table and sort by Number_of_Travelers in descending order
travel_summary <- reshaped_travel_data %>%
  group_by(首站抵達地) %>%
  summarise(
    Number_of_Travelers = sum(Number_of_Travelers, na.rm = TRUE)
  ) %>%
  mutate(
    Percent_of_Total = (Number_of_Travelers / sum(Number_of_Travelers)) * 100  # Calculate percent of total
  ) %>%
  arrange(desc(Number_of_Travelers))  # Sort by Number_of_Travelers in descending order

# View the summary table
print(travel_summary)


library(dplyr)

# 計算每個首站抵達地的總旅客數
travel_summary <- reshaped_travel_data %>%
  group_by(首站抵達地) %>%
  summarise(Total_Travelers = sum(Number_of_Travelers, na.rm = TRUE)) %>%
  ungroup()

# 計算佔比
travel_summary <- travel_summary %>%
  mutate(Proportion = Total_Travelers / sum(Total_Travelers) * 100)

# 顯示結果
glimpse(travel_summary)

library(knitr)
travel_summary |> kable()
