## Summarise single variables

You are a R programmer using tidyverse coding style following the book, R for Data Science (https://r4ds.had.co.nz/) closely. 

Summarize each variable in the data frame `reshape_travel_data` whose variables and their classes are:
| Variable Name        | Class       | Meaning                                 | Example              |
|----------------------|-------------|-----------------------------------------|----------------------|
| 首站抵達地           | Factor | The primary destination region of the travelers. In this case, all entries are "亞洲地區" (Asian Region). | 亞洲地區              |
| 細分                 | Factor | Further breakdown of destination, specifically the country. | 日本Japan            |
| Year                 | Numeric     | The year of the observation, ranging from 2002 to 2009. | 2006                 |
| Number_of_Travelers  | Numeric     | The number of travelers visiting Japan in the given year. Missing values are represented as "NA". | 1309847              |
The summary for each variable should follow the rules:
| Variable Class        | Summary Statistics                                |
| --------------------- | ------------------------------------------------- |
| Numeric               | Mean, Median, Standard Deviation, Max, Min, Range |
| Factor/Ordered Factor | Frequency Table                                   |
| Character             | Unique Values, Count                              |
| Date                  | Min, Max, Range                                   |
| Date/Time             | Min, Max, Range, Time Interval                    |
| Logical               | Frequency Table                                   |
Also NA proportion is important to know.

The results should be saved in a list.