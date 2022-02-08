library(rjson)
library(jsonlite)
library(tidyverse)
library(curl)
library(ggplot2)
library(dplyr)
library(car)
json<-jsonlite::fromJSON('https://static01.nyt.com/newsgraphics/2021/12/20/us-coronavirus-deaths-2021/ff0adde21623e111d8ce103fedecf7ffc7906264/scatter.json')


json %>% ggplot(aes(x=fully_vaccinated_pct_of_pop,
                    y=deaths_per_100k, label=name)) +geom_point()+
  geom_text(hjust=0, vjust=0)+
  ggtitle(label='Covid-19 deaths since universal adult vaccine
          eligibilty compared with vaccintaion rates')+
  theme_bw()

