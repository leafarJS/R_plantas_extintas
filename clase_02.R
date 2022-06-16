# install.packages("tidyverse")
# install.packages("knitr")
# install.packages("rmarkdown")
# install.packages("kableExtra")

library(tidyverse)
library(knitr)
library(rmarkdown)
library(kableExtra)

plants <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/plants.csv")
actions <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/actions.csv")
threats <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/threats.csv")
