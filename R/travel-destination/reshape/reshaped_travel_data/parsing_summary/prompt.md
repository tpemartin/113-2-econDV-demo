For the following task use Markdown syntax

> categorical_summary$首站抵達地_summary
[[1]]
首站抵達地
  亞洲地區   非洲地區   美洲地區 大洋洲地區   歐洲地區       全區 
       414         69         92        115        207         46 

Turn into a one row table

> categorical_summary$細分_summary
[[1]]
細分
            日本Japan             韓國Korea         香港Hong Kong 
                   23                    23                    23 
        中國大陸China             澳門Macao           越南Vietnam 
                   23                    23                    23 
         泰國Thailand      馬來西亞Malaysia       新加坡Singapore 
                   23                    23                    23 
    菲律賓Philippines            汶萊Brunei         印尼Indonesia 
                   23                    23                    23 
       柬埔寨Cambodia           緬甸Myanmar   阿拉伯聯合大公國UAE 
                   23                    23                    23 
         土耳其Turkey   亞洲其他地區 Others        亞洲合計 Total 
                   23                    23                    23 
        南非S. Africa   非洲其他地區 Others        非洲合計 Total 
                   23                    23                    23 
              美國USA          加拿大Canada   美洲其他地區 Others 
                   23                    23                    23 
       美洲合計 Total         澳洲Australia     紐西蘭New Zealand 
                   23                    23                    23 
            帛琉Palau 大洋洲其他地區 Others      大洋洲合計 Total 
                   23                    23                    23 
           法國France           德國Germany           義大利Italy 
                   23                    23                    23 
      荷蘭Netherlands              英國U.K.       瑞士Switzerland 
                   23                    23                    23 
        奧地利Austria    歐洲其他地區 Total        歐洲合計 Total 
                   23                    23                    23 
          其他 Others      總計 Grand Total 
                   23                    23 
                   
                   
Turn in to a three columns table, starting from

 |日本Japan       |      韓國Korea     |    香港Hong Kong |
 |----|-----|-----|
|  23  |        23   |                 23 |


****

> glimpse(numerical_summary)
Rows: 1
Columns: 10
$ Year_mean        <dbl> 2013
$ Year_median      <dbl> 2013
$ Year_min         <dbl> 2002
$ Year_max         <dbl> 2024
$ Year_sd          <dbl> 6.636769
$ Travelers_mean   <dbl> 721486.1
$ Travelers_median <dbl> 42944.5
$ Travelers_min    <dbl> 0
$ Travelers_max    <dbl> 17101335
$ Travelers_sd     <dbl> 2405712

Generate Mardown table with Year and Travelers as headers and rows of mean, median, min, max, and sd