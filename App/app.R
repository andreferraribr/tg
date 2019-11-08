#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(readxl)
library(ggplot2)
library(DT)

custos <- read_excel("custos.xlsx")

colnames(custos)<-c("ne_ref","ne","proc","uo","ugr_cod","ugr", "icc_cod","icc","mes","mes_cod","pi_cod","pi", "ndd_cod","ndd","fav_cod","fav","obs","dh","custo" )


ui <- basicPage(
    h2("custos"),
    DT::dataTableOutput("mytable")
)

server <- function(input, output) {
    output$mytable = DT::renderDataTable({
       custos
    })
}

shinyApp(ui, server)