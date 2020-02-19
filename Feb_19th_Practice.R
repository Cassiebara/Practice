#Cassidy Riley 
#cariley@usfca.edu
#This is practice using data about daily air pollution throught the city of San Francisco.  

library("dplyr")
library("ggplot2")
library("readr")
library("lubridate")

air_data <- read.csv(file = "ad_viz_plotval_data.csv.xls")

#Now making a summary table
# found this code online
# https://stackoverflow.com/questions/34594641/dplyr-summary-table-for-multiple-variables/35100059

# How to chose which data is summerized? 
df.sum <- df %>%
  select(mpg, cyl, vs, am, gear, carb) %>% V4
  summarise_each(funs(min = min, 
                      q25 = quantile(., 0.25), 
                      median = median, 
                      q75 = quantile(., 0.75), 
                      max = max,
                      mean = mean, 
                      sd = sd))
  