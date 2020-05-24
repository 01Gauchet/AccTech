

library(shiny)

fp_local_data <- "/data";

dat_gangs_over_abs <- readRDS(file.path(fp_local_data, "gangs_abs_over.rds"));

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Acc Technology: Mining Hours Analysis"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
