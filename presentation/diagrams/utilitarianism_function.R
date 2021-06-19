## Act in such a way that maximises
### life
### years of life
### quality of life
### quality of life years
### societal benefit
### happiness
### profit
### logbook numbers

library(tidyverse)
library(hrbrthemes)
library(gganimate)
library(showtext)
library(extrafont)

## https://www.r-bloggers.com/2019/03/adding-custom-fonts-to-ggplot-in-r/
## https://stackoverflow.com/questions/25061822/ggplot-geom-text-font-size-control

# extrafont::font_import()
extrafont::loadfonts(device = "win")

utility_types <- c("happiness",
                   "utility",
                   "life",
                   "years of life",
                   "quality of life",
                   "quality of life years",
                   "societal benefit",
                   "logbook numbers")

utility <- dplyr::tibble(utility_type = utility_types) %>%
  mutate(utility_type = factor(utility_type,
                               levels = utility_type))



utility_plot <- ggplot2::ggplot(data = utility) +
  labs(title = "Act in a way that maximises: {closest_state}") +
  gganimate::transition_states(states = utility_type) +
  theme_minimal() +
  theme(panel.grid = element_blank()) +
  theme(plot.title = element_text(family = "Vivaldi",
                                  size = 100,
                                  vjust = -15,
                                  hjust = 0.5),
        plot.background = element_rect(colour = "#FDF6E3",
                                       fill = "#FDF6E3"),
        panel.background = element_rect(colour = "#FDF6E3",
                                        fill = "#FDF6E3"))
  

anim_save(animation = utility_plot,
          path = "C:/Users/desktop-coll/Dropbox/Medicine/Academic.9.ICM/surgical_critical_ethics/presentation/diagrams",
          filename = "utility.mp4",
          renderer = ffmpeg_renderer(),
          width = 1800,
          height = 1200)
