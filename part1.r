## -----------------------------------------------------------------------------------------------------
library("tidyverse")
library("tidyr")
library("dplyr")
library("readr")
library("stringr")
library("readxl")


## -----------------------------------------------------------------------------------------------------
Unemployment <- read_excel("Unemployment.xls")


## -----------------------------------------------------------------------------------------------------
clean_unemp <- select(Unemployment, 1,2,3,7,8,9,10)


## -----------------------------------------------------------------------------------------------------
clean_unemp$year = 2007


## -----------------------------------------------------------------------------------------------------
print(clean_unemp)



## -----------------------------------------------------------------------------------------------------
colnames(clean_unemp)[colnames(clean_unemp) == "State"] <- "state"
colnames(clean_unemp)[colnames(clean_unemp) == "Area_name"] <- "county"
colnames(clean_unemp)[colnames(clean_unemp) == "Civilian_labor_force_2007"] <- "civilian_labor"
colnames(clean_unemp)[colnames(clean_unemp) == "Employed_2007"] <- "employed"
colnames(clean_unemp)[colnames(clean_unemp) == "Unemployed_2007"] <- "unemployed"
colnames(clean_unemp)[colnames(clean_unemp) == "Unemployment_rate_2007"] <- "unemployment_rate"



## -----------------------------------------------------------------------------------------------------
print(clean_unemp)


## -----------------------------------------------------------------------------------------------------
col = 11

for (n_year in 2008:2017){
  col2 = col+1
  col3 = col+2
  col4 = col+3
  temp_unemp <- select(Unemployment,1,2,3,col,col2,col3,col4)
  colnames(temp_unemp)[2] = "state"
  colnames(temp_unemp)[3] = "county"
  colnames(temp_unemp)[4] = "civilian_labor"
  colnames(temp_unemp)[5] = "employed"
  colnames(temp_unemp)[6] = "unemployed"
  colnames(temp_unemp)[7] = "unemployment_rate"
  temp_unemp$year=n_year
  clean_unemp <- rbind(clean_unemp, temp_unemp)
  col = col4+1
}



## -----------------------------------------------------------------------------------------------------
print(clean_unemp)


## -----------------------------------------------------------------------------------------------------
library("ggplot2")


## -----------------------------------------------------------------------------------------------------
butler_county <- clean_unemp[clean_unemp$county == 'Butler County, AL',]


## -----------------------------------------------------------------------------------------------------
butler_plot <- ggplot(butler_county, aes(x=year, y=unemployment_rate, label=unemployment_rate))


## -----------------------------------------------------------------------------------------------------
butler_plot + geom_line()


## -----------------------------------------------------------------------------------------------------
butler_plot + geom_step()


## -----------------------------------------------------------------------------------------------------
butler_plot + geom_bar(stat = "identity", color = "Blue", fill="light blue") + geom_text(size = 3, position = position_stack(vjust = 0.5))


## -----------------------------------------------------------------------------------------------------
usa_data <- clean_unemp[clean_unemp$county == 'United States',]
usa_plot <- ggplot(usa_data, aes(x=year, y=unemployment_rate, label=unemployment_rate))

## -----------------------------------------------------------------------------------------------------
usa_plot + geom_bar(stat = "identity", color = "Blue", fill="light blue") + geom_text(size = 3, position = position_stack(vjust = 0.5))

