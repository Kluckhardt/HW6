setwd(C:/Users/Luckh/OneDrive/Documents/School/DSC/DATA/house_prices.rda)
setwd("C:/Users/Luckh/OneDrive/Documents/School/DSC/DATA")
load("house_prices.rda")
ls()
head(house_prices) 

install.packages("dplyr")
install.packages("tidyr")

library(tidyr)
library(dplyr)
library(ggplot2)

house_reshaped <- house_prices %>%
gather(key = "measure", value = "value", house_price_index, unemploy_perc)
head(house_reshaped)
str(house_reshaped)

ggplot(subset_data, aes(x = date, y = value, color = measure)) +
  geom_line() +
  scale_x_continuous(breaks = c(1980, 2000, 2020), labels = c("'80", "'00", "'20")) +
  facet_wrap(~ state) +
  theme_minimal() +
  labs(title = "House Price Index vs. Unemployment % (Selected States)",
       x = "Year",
       y = "Value",
       color = "Measure")




