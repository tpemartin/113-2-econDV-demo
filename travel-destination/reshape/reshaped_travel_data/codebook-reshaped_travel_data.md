---
output:
  word_document: default
  html_document: default
---

# Codebook for Reshaped Travel Data

## Dataset Overview

This dataset contains the number of Taiwanese nationals traveling abroad by destination from 2002 to 2024.

## Variables

-   `首站抵達地`: Categorical variable representing the main destination region.
-   `細分`: Categorical variable representing the specific country or area within the main destination region.
-   `Year`: Numeric variable representing the year.
-   `Number_of_Travelers`: Numeric variable representing the number of travelers.

## Variable Types

-   `首站抵達地`: Categorical
-   `細分`: Categorical
-   `Year`: Numeric
-   `Number_of_Travelers`: Numeric


|     首站抵達地 |                 細分   |     Year    |Number_of_Travelers |
|:---------------|:-----------------------|:------------|:-------------------|
|亞洲地區  :414  |中國大陸China      : 23 |Min.   :2002 |Min.   :       0    |
|全區      : 46  |亞洲其他地區 Others: 23 |1st Qu.:2007 |1st Qu.:    1550    |
|大洋洲地區:115  |亞洲合計 Total     : 23 |Median :2013 |Median :   42944    |
|歐洲地區  :207  |其他 Others        : 23 |Mean   :2013 |Mean   :  721486    |
|美洲地區  : 92  |加拿大Canada       : 23 |3rd Qu.:2019 |3rd Qu.:  244325    |
|非洲地區  : 69  |南非S. Africa      : 23 |Max.   :2024 |Max.   :17101335    |
|NA              |(Other)            :805 |NA           |NA's   :201         |