## Summarise single variables

> str(reshaped_travel_data)
tibble [943 × 4] (S3: tbl_df/tbl/data.frame)
 $ 首站抵達地         : Factor w/ 6 levels "亞洲地區","非洲地區",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ 細分               : Factor w/ 41 levels "日本Japan","韓國Korea",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ Year               : num [1:943] 2002 2003 2004 2005 2006 ...
 $ Number_of_Travelers: num [1:943] NA NA NA NA NA ...
 
Summarise

  - Factor class by frequency table.  
  - Numeric class by its median, mean, range, interquartile range.
  
The result should be save in a list.

## Upload single variable summary to google sheets

Upload all the following data frames to a single sheet, named `reshaped_travel_data_single_variable_summary`:

  - Data frames: `summary_results$Year`, `summary_results$Number_of_Travelers`, `summary_results$首站抵達地$Frequency_Table`, and `summary_results$細分$Frequency_Table`
  
All four data frames should be in one sheet adjacent to each other with one empty column as divisions.

Other information:

  - google sheets url: "https://docs.google.com/spreadsheets/d/1tbwc7zuVcg3V72DzjFU8F19E7nZ_dsfjYP1ICiqcRcY/edit?gid=544763957#gid=544763957"