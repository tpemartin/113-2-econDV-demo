# Create a codebook in markdown format
codebook <- "
# Codebook for Reshaped Travel Data

## Dataset Overview
This dataset contains the number of Taiwanese nationals traveling abroad by destination from 2002 to 2024.

## Variables

- `First_Arrival_Destination`: Categorical variable representing the main destination region.
- `Subdivision`: Categorical variable representing the specific country or area within the main destination region.
- `Year`: Numeric variable representing the year.
- `Number_of_Travelers`: Numeric variable representing the number of travelers.

## Variable Types

- `First_Arrival_Destination`: Categorical
- `Subdivision`: Categorical
- `Year`: Numeric
- `Number_of_Travelers`: Numeric
"

# Save the codebook as a markdown file
write_lines(codebook, "travel-destination/codebook-reshaped_travel_data.md")