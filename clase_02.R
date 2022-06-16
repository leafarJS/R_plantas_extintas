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

data("msleep")
view(msleep)
tabla <- msleep %>%
  group_by(vore) %>%
  summarise_at(.vars = "sleep_total", .funs = list(Mean = mean, SD =sd)) %>%
  dplyr::filter(!is.na(vore)) %>%
  arrange(desc(Mean))

View(tabla)



msleep_long <- msleep %>% 
  dplyr::select(name, vore,sleep_total, brainwt)

kable(msleep_long, digits = 2, caption = "La base de datos entera") %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), full_width = F) %>% 
  scroll_box(width = "800px", height = "200px")

