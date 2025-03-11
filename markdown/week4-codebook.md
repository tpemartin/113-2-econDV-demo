# Codebook: Travel Dataset

## Dataset Overview
This dataset records the number of travelers visiting various destinations for different years. The data includes categorical information about the region and specific destination, as well as numerical data representing the year and traveler counts. Missing values are represented as `NA`.

## Variable Descriptions

| Variable Name       | Class     | Description                                      | Example Values         |
|---------------------|----------|--------------------------------------------------|------------------------|
| `首站抵達地`         | Factor | The broad region of the destination              | "亞洲地區" (Asia)       |
| `細分`              | Factor | The specific country or area within the region  | "日本Japan"            |
| `Year`             | integer   | The year of recorded traveler count             | 2002, 2003, 2013       |
| `Number_of_Travelers` | integer   | The number of travelers (may contain missing values) | 1309847, 1113857, NA  |

## Notes
- The dataset contains missing values (`NA`) for certain years.
- The variable `首站抵達地` indicates a broad geographical region, while `細分` provides more detailed information about the specific country or area.
- The `Number_of_Travelers` variable represents the number of recorded travelers for a given year and location.

## Variable summary

> summary_reshaped_travel_data$首站抵達地
[[1]]
[1] "亞洲地區"   "非洲地區"   "美洲地區"   "大洋洲地區" "歐洲地區"   "全區"      

> summary_reshaped_travel_data$細分
[[1]]
 [1] "日本Japan"             "韓國Korea"             "香港Hong Kong"         "中國大陸China"        
 [5] "澳門Macao"             "越南Vietnam"           "泰國Thailand"          "馬來西亞Malaysia"     
 [9] "新加坡Singapore"       "菲律賓Philippines"     "汶萊Brunei"            "印尼Indonesia"        
[13] "柬埔寨Cambodia"        "緬甸Myanmar"           "阿拉伯聯合大公國UAE"   "土耳其Turkey"         
[17] "亞洲其他地區 Others"   "亞洲合計 Total"        "南非S. Africa"         "非洲其他地區 Others"  
[21] "非洲合計 Total"        "美國USA"               "加拿大Canada"          "美洲其他地區 Others"  
[25] "美洲合計 Total"        "澳洲Australia"         "紐西蘭New Zealand"     "帛琉Palau"            
[29] "大洋洲其他地區 Others" "大洋洲合計 Total"      "法國France"            "德國Germany"          
[33] "義大利Italy"           "荷蘭Netherlands"       "英國U.K."              "瑞士Switzerland"      
[37] "奧地利Austria"         "歐洲其他地區 Total"    "歐洲合計 Total"        "其他 Others"          
[41] "總計 Grand Total"  

> summary_reshaped_travel_data$Year_range
[1] "2002 - 2024"