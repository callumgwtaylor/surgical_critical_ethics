library(tidyverse)
library(hrbrthemes)
library(waffle)

  face_graph_function <- function(patient_numbers = 1,
                                  plot_path =  "C:/Users/desktop-coll/Dropbox/Medicine/Academic.9.ICM/surgical_critical_ethics/presentation/diagrams",
                                  plot_name = "plot.svg"){

  patients <- patient_numbers
  
  patients_frown <- rep("frown", patients)
  patients_smile <- rep("smile", 100-patients)
  patients_list <- c(patients_smile, patients_frown)
  patients_list <- factor(patients_list,
                          levels = c("frown", "smile"))
  
  patients_table <- tidyr::tibble(
    patient_numbers = 1:100,
    patient_values = patients_list
    
  )
  
  patients_table %>%
    count(patient_values) %>%
      ggplot(aes(label = patient_values,
                 values = n)) +
    geom_pictogram(n_rows = 10,
                   aes(colour = patient_values),
                   flip = TRUE,
                   make_proportional = TRUE,
                   family = "Font Awesome 5 Free Solid") +
    scale_colour_manual(
      name = NULL,
      values = c("#FC766A", "#a8d5e5"),
      labels = c("frown", "smile")) +
    scale_label_pictogram(
      name = NULL,
      values = c("frown-open", "grin"),
      labels = c("frown", "smile"))+
    coord_equal() +
    theme_ipsum_rc(grid="") +
    theme_enhance_waffle() +
    theme(legend.position = "none",
          text =element_text(family="Font Awesome 5 Free Solid")) +
    labs(title = "  ")
  
  ggsave(plot = last_plot(),
         device = grDevices::svg,
         path = plot_path,
         filename = plot_name)
  }