## ----echo=FALSE, message=FALSE, error=FALSE, warning=FALSE, results='hide'----
include <- function(library_name){
  if( !(library_name %in% installed.packages()) )
    install.packages(library_name) 
  library(library_name, character.only=TRUE)
}
include("tidyverse")
include("knitr")
include("xlsx")
gc()
purl("deliverable1.Rmd", output = "part1.r") # produces r source from rmd
source("part1.r") # executes the source
options(scipen=999)


## -----------------------------------------------------------------------------
Education <- read_excel("Education.xls")
eduLevelsbyCounty <- select(Education, 2, 3, 8:47)

colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Area name"] <- "area_name"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Less than a high school diploma, 1970"] <- "LessThan_Diploma, 1970"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "High school diploma only, 1970"] <- "HS_Diploma, 1970"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Some college (1-3 years), 1970"] <- "Some_College, 1970"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Four years of college or higher, 1970"] <- "BA_or_more, 1970"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults with less than a high school diploma, 1970"] <- "per_cent_LessThan_Diploma, 1970"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults with a high school diploma only, 1970"] <- "per_cent_HS_Diploma, 1970"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults completing some college (1-3 years), 1970"] <- "per_cent_Some_College, 1970"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults completing four years of college or higher, 1970"] <- "per_cent_BA_or_more, 1970"

colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Less than a high school diploma, 1980"] <- "LessThan_Diploma, 1980"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "High school diploma only, 1980"] <- "HS_Diploma, 1980"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Some college (1-3 years), 1980"] <- "Some_College, 1980"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Four years of college or higher, 1980"] <- "BA_or_more, 1980"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults with less than a high school diploma, 1980"] <- "per_cent_LessThan_Diploma, 1980"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults with a high school diploma only, 1980"] <- "per_cent_HS_Diploma, 1980"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults completing some college (1-3 years), 1980"] <- "per_cent_Some_College, 1980"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults completing four years of college or higher, 1980"] <- "per_cent_BA_or_more, 1980"

colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Less than a high school diploma, 1990"] <- "LessThan_Diploma, 1990"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "High school diploma only, 1990"] <- "HS_Diploma, 1990"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Some college (1-3 years), 1990"] <- "Some_College, 1990"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Four years of college or higher, 1990"] <- "BA_or_more, 1990"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults with less than a high school diploma, 1990"] <- "per_cent_LessThan_Diploma, 1990"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults with a high school diploma only, 1990"] <- "per_cent_HS_Diploma, 1990"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults completing some college (1-3 years), 1990"] <- "per_cent_Some_College, 1990"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults completing four years of college or higher, 1990"] <- "per_cent_BA_or_more, 1990"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Less than a high school diploma, 2000"] <- "LessThan_Diploma, 2000"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "High school diploma only, 2000"] <- "HS_Diploma, 2000"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Some college (1-3 years), 2000"] <- "Some_College, 2000"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Four years of college or higher, 2000"] <- "BA_or_more, 2000"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults with less than a high school diploma, 2000"] <- "per_cent_LessThan_Diploma, 2000"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults with a high school diploma only, 2000"] <- "per_cent_HS_Diploma, 2000"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults completing some college (1-3 years), 2000"] <- "per_cent_Some_College, 2000"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults completing four years of college or higher, 2000"] <- "per_cent_BA_or_more, 2000"

colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Less than a high school diploma, 2013-17"] <- "LessThan_Diploma, 2013-17"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "High school diploma only, 2013-17"] <- "HS_Diploma, 2013-17"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Some college (1-3 years), 2013-17"] <- "Some_College, 2013-17"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Four years of college or higher, 2013-17"] <- "BA_or_more, 2013-17"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults with less than a high school diploma, 2013-17"] <- "per_cent_LessThan_Diploma, 2013-17"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults with a high school diploma only, 2013-17"] <- "per_cent_HS_Diploma, 2013-17"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults completing some college (1-3 years), 2013-17"] <- "per_cent_Some_College, 2013-17"
colnames(eduLevelsbyCounty)[colnames(eduLevelsbyCounty) == "Percent of adults completing four years of college or higher, 2013-17"] <- "per_cent_BA_or_more, 2013-17"


## -----------------------------------------------------------------------------
whole_nums_edu_levels <- select(eduLevelsbyCounty, 1:6, 11:14, 19:22, 27:30, 35:38)
percents_edu_levels <- select(eduLevelsbyCounty, 1:2, 7:10, 15:18, 23:26, 31:34, 39:42)

nums_USA <- whole_nums_edu_levels %>%
  filter(State == "US") 

percents_USA <- percents_edu_levels %>%
  filter(State == "US")


## -----------------------------------------------------------------------------
nums_df <- nums_USA %>% pivot_longer(cols=c(3:ncol(nums_USA)) )

nums_df <- nums_df %>% separate(name, into=c("name", "year"), sep=", ")

percents_df <- percents_USA %>% pivot_longer(cols=c(3:ncol(percents_USA)) )

percents_df <- percents_df %>% separate(name, into=c("name", "year"), sep=", ")

percents<-ggplot(percents_df, aes(x=year, y=value, group=name, color=name)) + scale_y_continuous(labels = scales::number_format(accuracy = 1)) +
  geom_line()

USA_county <- clean_unemp[clean_unemp$county == 'United States',]
USA_county <- USA_county[3:8]


## -----------------------------------------------------------------------------
drug_deaths <- read_excel("drug_induced_deaths.xlsx")
drug_deaths_1999 <- drug_deaths[drug_deaths$Year == '1999',]
drug_deaths_1999_sum <- apply(drug_deaths_1999[,3], 2, sum)
print(drug_deaths_1999_sum)


## -----------------------------------------------------------------------------
USA_dd <- select(drug_deaths, 2:4)
USA_dd <- USA_dd %>% group_by(Year) %>% summarise_each(funs(sum))
colnames(USA_dd)[colnames(USA_dd) == "Year"] <- "year"


## -----------------------------------------------------------------------------
USA_dd$percent <- USA_dd$Deaths/USA_dd$Population


## -----------------------------------------------------------------------------
print(USA_dd)
print(USA_county)
colnames(USA_dd)[colnames(USA_dd) == "Deaths"] <- "drug_related_deaths_number"
colnames(USA_dd)[colnames(USA_dd) == "percent"] <- "drug_related_deaths_percent"
print(USA_dd)


## -----------------------------------------------------------------------------
combined_dataset <- merge(USA_dd, USA_county, by="year", all=TRUE)
combined_dataset <- na.omit(combined_dataset)
print(combined_dataset)


## -----------------------------------------------------------------------------
as.numeric(combined_dataset$year)
as.numeric(combined_dataset$drug_related_deaths_number)
as.numeric(combined_dataset$Population)
as.numeric(combined_dataset$drug_related_deaths_percent)
as.numeric(combined_dataset$civilian_labor)
as.numeric(combined_dataset$employed)
as.numeric(combined_dataset$unemployed)
as.numeric(combined_dataset$unemployment_rate)


## -----------------------------------------------------------------------------
corr_set <- lm(data=combined_dataset, formula=unemployed~drug_related_deaths_number+drug_related_deaths_percent+civilian_labor)


## -----------------------------------------------------------------------------
summary(corr_set)


## -----------------------------------------------------------------------------
prediction <-data.frame(drug_predict = predict(corr_set, combined_dataset), deaths=combined_dataset$drug_related_deaths_number)


## -----------------------------------------------------------------------------
ggplot(data=combined_dataset, aes(x=unemployed,y=drug_related_deaths_number)) + geom_point(color='blue') + geom_line(color='red', data = prediction, aes(x=drug_predict, y=deaths))

