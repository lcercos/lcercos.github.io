#I loaded the libraries
library(ggplot2)

library(tidyverse)

library(dplyr)

#Filter the data after uploading fruitvegprices_19apr22.csv
fruitveg_kg <- fruitvegprices_19apr22 %>%
  filter(`unit` == "kg")

#Reinspecting the original data to find out I wanted to focus on "lettuce" item, "little_gem" variety
lettuce <- fruitvegprices_19apr22 %>%
  filter(`item` == "lettuce") %>%
  filter(`variety` == "little_gem")

#I realised the date category was a character, so I changed it to Date
strDates <- c(lettuce$date)
lettuce$date <- as.Date(strDates, "%d/%m/%Y")

#I created a chart using ggplot
p <- ggplot(data=lettuce, aes(x=date, y=price)) +
  geom_line(color = "#23AC0E")

#Edited the aesthetics
p + theme(panel.border = element_blank(),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.background = element_rect(fill = "white", colour = "white"),
          plot.title = element_text(family = "serif", size = 15, face = "bold")) + 
  labs(x = "", y = "£ / 2 pack",
         title ="Lettuce price",
        subtitle = "Little gem variety",
         caption = "Guardian Graphic. Source: Government UK") 



#Repeat the whole process with other fruits and vegs to create a multiple line chart

apple <- fruitvegprices_19apr22 %>%
  filter(`item` == "apples") %>%
  filter(`variety` == "bramleys_seedling")

strDates <- c(apple$date)
apple$date <- as.Date(strDates, "%d/%m/%Y")

p3 <- ggplot(data=apple, aes(x=date, y=price)) +
  geom_line(color = "#23AC0E")

p3 + theme(panel.border = element_blank(),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.background = element_rect(fill = "white", colour = "white"),
          plot.title = element_text(family = "serif", size = 15, face = "bold")) + 
  labs(x = "", y = "£ / kg",
       title ="Apple price",
       subtitle = "Bramleys variety",
       caption = "Guardian Graphic. Source: Government UK") 

#Strawberries#

strawberries <- fruitvegprices_19apr22 %>%
  filter(`item` == "strawberries")

strDates <- c(strawberries$date)
strawberries$date <- as.Date(strDates, "%d/%m/%Y")

p4 <- ggplot(data=strawberries, aes(x=date, y=price)) +
  geom_line(color = "#23AC0E")

p4 + theme(panel.border = element_blank(),
           panel.grid.major = element_blank(),
           panel.grid.minor = element_blank(),
           panel.background = element_rect(fill = "white", colour = "white"),
           plot.subtitle = element_text(family = "serif", size = 15, face = "bold")) + 
  labs(x = "", y = "£ / kg",
       subtitle ="Strawberries price",
       caption = "Guardian Graphic. Source: Government UK")

#Cucumbers#
cucumber <- fruitvegprices_19apr22 %>%
  filter(`item` == "cucumbers")

strDates <- c(cucumber$date)
cucumber$date <- as.Date(strDates, "%d/%m/%Y")

p5 <- ggplot(data=cucumber, aes(x=date, y=price)) +
  geom_line(color = "#23AC0E")

p5 + theme(panel.border = element_blank(),
           panel.grid.major = element_blank(),
           panel.grid.minor = element_blank(),
           panel.background = element_rect(fill = "white", colour = "white"),
           plot.subtitle = element_text(family = "serif", size = 15, face = "bold")) + 
  labs(x = "", y = "£ / kg",
       subtitle ="Cucumber price",
       caption = "Guardian Graphic. Source: Government UK")

#Pears#
pears <- fruitvegprices_19apr22 %>%
  filter(`item` == "pears") %>%
  filter(`variety` == "conference")

strDates <- c(pears$date)
pears$date <- as.Date(strDates, "%d/%m/%Y")

p5 <- ggplot(data=onion, aes(x=date, y=price)) +
  geom_line(color = "#23AC0E")

p5 + theme(panel.border = element_blank(),
           panel.grid.major = element_blank(),
           panel.grid.minor = element_blank(),
           panel.background = element_rect(fill = "white", colour = "white"),
           plot.title = element_text(family = "serif", size = 15, face = "bold")) + 
  labs(x = "", y = "£ / kg",
       title ="Pear price",
       subtitle = "Conference variety",
       caption = "Guardian Graphic. Source: Government UK")

#Tomatoes#
tomatoes <- fruitvegprices_19apr22 %>%
  filter(`item` == "tomatoes") %>%
  filter(`variety` == "round")

strDates <- c(tomatoes$date)
tomatoes$date <- as.Date(strDates, "%d/%m/%Y")

p6 <- ggplot(data=tomatoes, aes(x=date, y=price)) +
  geom_line(color = "#23AC0E")

p6 + theme(panel.border = element_blank(),
           panel.grid.major = element_blank(),
           panel.grid.minor = element_blank(),
           panel.background = element_rect(fill = "white", colour = "white"),
           plot.title = element_text(family = "serif", size = 15, face = "bold")) + 
  labs(x = "", y = "£ / kg",
       title ="Tomatoes price",
       subtitle = "Round variety",
       caption = "Guardian Graphic. Source: Government UK")