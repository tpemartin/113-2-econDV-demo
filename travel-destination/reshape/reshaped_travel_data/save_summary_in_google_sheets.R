library(googlesheets4)
library(openxlsx)

# Make sure to authenticate your Google account
gs4_auth()  # This will prompt you for authentication the first time

# Create or open an existing Google Sheet
sheet_name <- "Travel Data Summary"  # Specify the name for the Google Sheet

# Get the sheet ID
sheet_id <- "1tceOB6JbwhQuYXAy6mtwszHabGE6BUG7rxiHa_5Y_6c"

# Convert the summaries in summary_results to data frames if they are not already
summary_to_df <- function(summary_list) {
  lapply(summary_list, function(x) {
    if("Frequency_Table" %in% names(x)) {
      # Return the frequency table as a data frame
      return(as.data.frame(x$Frequency_Table))
    }
    return(as.data.frame(x))
  })
}

# Prepare the data frames for export
summary_dfs <- summary_to_df(summary_results)

# Write each summary to a different sheet
sheet_names <- names(summary_results)
for (i in seq_along(summary_dfs)) {
  write_sheet(ss = sheet_id, 
             data = summary_dfs[[i]], 
             sheet = sheet_names[i])
}

# Check the sheets
gs4_browse(sheet_id)
