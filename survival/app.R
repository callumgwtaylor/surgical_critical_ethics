#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(bslib)

# Define UI for application that draws a histogram
ui <- fluidPage(
    theme = bslib::bs_theme(bootswatch = "flatly"),
    # Application title
    titlePanel("Survival"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("chance_operation",
                        "Proportion Survive Operation:",
                        min = 0,
                        max = 1,
                        value = 0.9),
            sliderInput("chance_icu",
                        "Proportion Survive ICU:",
                        min = 0,
                        max = 1,
                        value = 0.899),
            sliderInput("chance_hospital",
                        "Proportion Survive Hospital:",
                        min = 0,
                        max = 1,
                        value = 0.884),
            sliderInput("chance_home",
                        "Proportion Get Home:",
                        min = 0,
                        max = 1,
                        value = 0.9),
            sliderInput("chance_one",
                        "Proportion Alive One Year:",
                        min = 0,
                        max = 1,
                        value = 0.870),
            sliderInput("chance_four",
                        "Proportion Alive Four Years:",
                        min = 0,
                        max = 1,
                        value = 0.726)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h2("Chance Of Survival"),
           plotOutput("distPlot"),
           h6(a("Source Code Found Here", href="https://github.com/callumgwtaylor/surgical_critical_ethics"))
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        library(tidyverse)
        library(ggalluvial)
        patients <- 1:10000
        patients_shuffled <- sample(patients)
        patients <- tibble(
            patient_id = patients_shuffled
        )
        
        survived <- function(df_patient, survival_chance = 0.9){
            list_patient_id <- df_patient$patient_id
            length_patient <- length(list_patient_id)
            list_of_patients <- sample(list_patient_id)
            
            patient_survive <- list_of_patients[1:round(survival_chance * length_patient)]
            
            patient_survive <- tibble(
                patient_id = patient_survive,
                survived = TRUE
            )
            
            if(survival_chance < 1){
                patient_died <- list_of_patients[round(survival_chance * length_patient + 1):length_patient]
                
                patient_died <- tibble(
                    patient_id = patient_died,
                    survived = FALSE
                )
                
                patients <- bind_rows(patient_survive, patient_died)
                survived_results <- left_join(df_patient, patients)
                rm(df_patient, patient_survive, patient_died, patients)
                
            } else{
                survived_results <- left_join(df_patient, patient_survive)
                rm(df_patient, patient_survive)
            }
         
            rm(list_of_patients, list_patient_id, length_patient) 
            
         survived_results   
            
        }
        
        
        selective_survived <- function(df_patient, filter_column, new_name, survival_chance = 0.9){
            df_patient_true <- df_patient %>%
                filter({{filter_column}} == TRUE)
            
            list_patient_id <- df_patient_true$patient_id
            length_patient <- length(list_patient_id)
            list_of_patients <- sample(list_patient_id)
            
            patient_survive <- list_of_patients[1:round(survival_chance * length_patient)]
            
            patient_survive <- tibble(
                patient_id = patient_survive,
                survived = TRUE
            )
            
            
            if(survival_chance < 1){
                patient_died <- list_of_patients[round(survival_chance * length_patient + 1):length_patient]
                
                patient_died <- tibble(
                    patient_id = patient_died,
                    survived = FALSE
                )
                
                patients <- bind_rows(patient_survive, patient_died)
                
                survived_results <- left_join(df_patient, patients) %>%
                    mutate(survived = replace_na(survived, FALSE)) %>%
                    rename({{new_name}} := survived)
                
            } else {
                survived_results <- left_join(df_patient, patient_survive) %>%
                    mutate(survived = replace_na(survived, FALSE)) %>%
                    rename({{new_name}} := survived)
            }
            

        survived_results

        }
        
        patients_percentage <- patients %>%
            mutate(operated = TRUE) %>%
            selective_survived(filter_column = operated,
                               new_name = survived_operation,
                               survival_chance = input$chance_operation) %>%
            selective_survived(filter_column = survived_operation,
                               new_name = survived_icu,
                               survival_chance = input$chance_icu) %>%
            selective_survived(filter_column = survived_icu,
                               new_name = survived_hospital,
                               survival_chance = as.numeric(input$chance_hospital)) %>%
            selective_survived(filter_column = survived_hospital,
                               new_name = got_home,
                               survival_chance = as.numeric(input$chance_home)) %>%
            selective_survived(filter_column = got_home,
                               new_name = one_year,
                               survival_chance = as.numeric(input$chance_one)) %>%
            selective_survived(filter_column = one_year,
                               new_name = four_year,
                               survival_chance = as.numeric(input$chance_four)) %>%
            selective_survived(filter_column = four_year,
                               new_name = eventually,
                               survival_chance = 0) %>%
            filter(eventually == FALSE)
        
        
        rm(patients, patients_shuffled)
        
        patients_percentage <- patients_percentage %>%
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
        patients_percentage[patients_percentage == 0.00] <- NA
        
        patients_percentage <- patients_percentage %>%
            mutate(truefalse = (((as.numeric(survived)-1)*-1)+1)*10000)  %>%
            mutate(percentage = stringr::str_c(percentage, "%", sep = ""))
        
        
        survived_position <- patients_percentage %>%
            filter(survived == TRUE)
        survived_position <- min(survived_position$count)/2
        
        died_position <- patients_percentage %>%
            filter(survived == FALSE)
        
        died_position <- 10000 - min(died_position$count)/2
        
        positioning_labels <- tibble(
            position = c(survived_position,died_position),
            survived = c(TRUE, FALSE)
        ) %>%
            mutate(survived = factor(survived,
                                     levels = c(FALSE,
                                                TRUE)))
        
        patients_percentage <- left_join(patients_percentage, positioning_labels)
        
        rm(positioning_labels, died_position, survived_position)
        
        cols <- c("TRUE" = "#FC766A",
                  "FALSE" = "#5B84B1FF")
        
        patients_percentage <- patients_percentage %>%
            mutate(event = recode_factor(event,
                                         operated = "Operation",
                                         survived_operation = "Surviving\nOperation",
                                         survived_icu = "Surviving\nICU",
                                         survived_hospital = "Surviving\nHospital",
                                         got_home = "Get\nHome",
                                         one_year = "Surviving\nOne\nYear",
                                         four_year = "Surviving\nFour\nYears",
                                         eventually = "Chance\nOf\nDying\nEventually"))
        
        plot <- ggplot(patients_percentage) +
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
                      nudge_y = -1000) +
            theme_minimal() +
            scale_fill_manual(values = cols) +
            theme(legend.position = "bottom") +
            labs(x = "")
        rm(patients_percentage)
        plot
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
