library(tidyverse)
library(ggalluvial)
patients <- 1:10000
patients_shuffled <- sample(patients)
patients <- tibble(
  patient_id = patients_shuffled
)

survived <- function(patient_ids, survival_chance = 0.9){
  patient_id <- patient_ids$patient_id
  length_patient <- length(patient_id)
  patient_list <- sample(patient_id)
  
  patient_survive <- patient_list[1:round(survival_chance * length_patient)]
  patient_died <- patient_list[round(survival_chance * length_patient + 1):length_patient]
  
  patient_survive <- tibble(
    patient_id = patient_survive,
    survived = TRUE
    )
  
  patient_died <- tibble(
    patient_id = patient_died,
    survived = FALSE
    )
  
  patients <- bind_rows(patient_survive, patient_died)
  left_join(patient_ids, patients)
}


selective_survived <- function(patient_ids, filter_column, new_name, survival_chance = 0.9){
  patient_ids_true <- patient_ids %>%
    filter({{filter_column}} == TRUE)
  
  patient_id <- patient_ids_true$patient_id
  length_patient <- length(patient_id)
  patient_list <- sample(patient_id)
  
  patient_survive <- patient_list[1:round(survival_chance * length_patient)]
  patient_died <- patient_list[round(survival_chance * length_patient + 1):length_patient]
  
  patient_survive <- tibble(
    patient_id = patient_survive,
    survived = TRUE
  )
  
  patient_died <- tibble(
    patient_id = patient_died,
    survived = FALSE
  )
  
  patients <- bind_rows(patient_survive, patient_died)
  left_join(patient_ids, patients) %>%
    mutate(survived = replace_na(survived, FALSE)) %>%
    rename({{new_name}} := survived)
}

patients_percentage <- patients %>%
  mutate(operated = TRUE) %>%
  selective_survived(filter_column = operated,
                     new_name = survived_operation,
                     survival_chance = 0.95) %>%
  selective_survived(filter_column = survived_operation,
                     new_name = survived_icu,
                     survival_chance = 0.9) %>%
  selective_survived(filter_column = survived_icu,
                     new_name = survived_hospital,
                     survival_chance = 0.88) %>%
  selective_survived(filter_column = survived_hospital,
                     new_name = got_home,
                     survival_chance = 0.88) %>%
  selective_survived(filter_column = got_home,
                     new_name = one_year,
                     survival_chance = 0.87) %>%
  selective_survived(filter_column = one_year,
                     new_name = four_year,
                     survival_chance = 0.72) %>%
  selective_survived(filter_column = four_year,
                     new_name = eventually,
                     survival_chance = 0) %>%
  filter(eventually == FALSE)
  

patients_pivoted_numbers <- patients_percentage %>%
  pivot_longer(cols = c(operated, survived_operation, survived_icu, survived_hospital, got_home, one_year, four_year, eventually),
               names_to = "event",
               values_to = "survived") %>%
  mutate(event = factor(event,
                        levels = c(
                          "operated",
                          "survived_operation",
                          "survived_icu",
                          "survived_hospital",
                          "got_home",
                          "one_year",
                          "four_year",
                          "eventually"
                        ))) %>%
  mutate(survived = factor(survived,
                           levels = c(
                             FALSE,
                             TRUE))) %>%
  select(-patient_id) %>%
  group_by(event, survived) %>%
  summarise(count = n()) %>%
  mutate(percentage = (count/10000)*100) %>%
  mutate(percentage = round(percentage * (as.numeric(survived)-1), digits = 1)) 

patients_pivoted_numbers[patients_pivoted_numbers == 0.00] <- NA

patients_pivoted_numbers <- patients_pivoted_numbers %>%
  mutate(truefalse = (((as.numeric(survived)-1)*-1)+1)*10000)

survived_position <- patients_pivoted_numbers %>%
  filter(event == "four_year") %>%
  filter(survived == TRUE)
survived_position <- survived_position$count[1]/2

died_position <- patients_pivoted_numbers %>%
  filter(event == "survived_operation") %>%
  filter(survived == FALSE)
died_position <- 10000 - (min(died_position$count)/2)

positioning_labels <- tibble(
  position = c(survived_position,died_position),
  survived = c(TRUE, FALSE)
) %>%
  mutate(survived = factor(survived,
                           levels = c(FALSE,
                                      TRUE)))

patients_pivoted_numbers <- left_join(patients_pivoted_numbers, positioning_labels)


ggplot(patients_pivoted_numbers) +
  geom_bar(aes(fill = survived,
               x = event,
               y = count),
           position = "stack",
           stat = "identity") +
  geom_text(aes(x = event,
                y = position,
                label = count)) +
  geom_text(aes(x = event,
                y = position,
                label = percentage),
            nudge_y = -1000)

