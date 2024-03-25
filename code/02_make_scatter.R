here::i_am("code/02_make_scatter.R")

data <- readRDS(
  file = here::here("output/data_clean.rds")
)

library(pacman)
p_load(labelled, gtsummary, ggplot2, car, knitr)

scatterplot <- ggplot(data, aes(x = shield_glycans, y = ab_resistance)) +
  geom_point() +
  geom_smooth(method = lm) +
  theme_bw()

scatterplot

ggsave(
  here::here("output/scatterplot.png"), 
  plot = scatterplot,
  device = "png"
)
