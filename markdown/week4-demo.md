I have a CSV file whose beginning rows look like:
首站抵達地,細分,Year,Number_of_Travelers
亞洲地區,日本Japan,2002,NA
亞洲地區,日本Japan,2003,NA
亞洲地區,日本Japan,2004,NA
亞洲地區,日本Japan,2005,NA
亞洲地區,日本Japan,2006,NA
亞洲地區,日本Japan,2007,NA
亞洲地區,日本Japan,2008,1309847
亞洲地區,日本Japan,2009,1113857
亞洲地區,日本Japan,2010,1377957
亞洲地區,日本Japan,2011,1136394
亞洲地區,日本Japan,2012,1560300
亞洲地區,日本Japan,2013,2346007

Generate a codebook in Markdown syntax which covers:
A table of variable names, classes, and meanings (give some example if possible).
A brief description of the dataset.

***

I use R program and follow tidyverse style, and the R for data science book (https://r4ds.had.co.nz/) closely. 
I have a data frame `reshaped_travel_data`. Please parse its variables according to the following table information:

| Variable Name       | Class     | Description                                      | Example Values         |
|---------------------|----------|--------------------------------------------------|------------------------|
| `首站抵達地`         | Factor | The broad region of the destination              | "亞洲地區" (Asia)       |
| `細分`              | Factor | The specific country or area within the region  | "日本Japan"            |
| `Year`             | integer   | The year of recorded traveler count             | 2002, 2003, 2013       |
| `Number_of_Travelers` | integer   | The number of travelers (may contain missing values) | 1309847, 1113857, NA  |
