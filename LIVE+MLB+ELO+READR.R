library(tidyverse)
  mlb_elo <- read_csv("https://projects.fivethirtyeight.com/mlb-api/mlb_elo.csv") %>%
    mutate(
      playoff = as.factor(playoff),
      playoff = ifelse(playoff == "<NA>", NA, playoff),
      neutral = as.logical(neutral)
    )