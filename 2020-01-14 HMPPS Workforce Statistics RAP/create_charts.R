# ---------------------------------------------------------
# This script generates the charts for the report based on
# the dataset loaded and processed in prep_data.R
# ---------------------------------------------------------

# Load packages
library(dplyr)
library(lubridate)
library(plotly)
library(reshape2)


# Set font sizes for the charts
f1 <- list(size = 35)
f2 <- list(size = 20)


# ---- Fig 1: Storms per year ----

# Extract categories for all storms recorded in the past 20 years
storm_categories <- storms_max_wind %>%
  filter(year >= this_year - 20 & year <= this_year) %>%
  select(year, category)

# Count number of storms of each category in each year
num_storms <- storm_categories %>%
  group_by(year, category) %>%
  summarise(total = n())

# Restructure dataframe so that different storm categories are separated into different columns
num_storms <- dcast(num_storms, formula = year ~ category, value.var = "total", fill = 0)

# Define labels for the chart
names <- c("Tropical depression", "Tropical storm", "Category 1 hurricane", "Category 2 hurricane",
           "Category 3 hurricane", "Category 4 hurricane", "Category 5 hurricane")

# Create the chart
num_storms_plot <- plot_ly(num_storms, type = "bar") %>%
  add_trace(x = ~year, y = ~`-1`, name = names[1], marker = list(color = "#440154FF")) %>%
  add_trace(x = ~year, y = ~`0`, name = names[2], marker = list(color = "#453781FF")) %>%
  add_trace(x = ~year, y = ~`1`, name = names[3], marker = list(color = "#33638DFF")) %>%
  add_trace(x = ~year, y = ~`2`, name = names[4], marker = list(color = "#238A8DFF")) %>%
  add_trace(x = ~year, y = ~`3`, name = names[5], marker = list(color = "#29AF7FFF")) %>%
  add_trace(x = ~year, y = ~`4`, name = names[6], marker = list(color = "#73D055FF")) %>%
  add_trace(x = ~year, y = ~`5`, name = names[7], marker = list(color = "#DCE319FF")) %>%
  layout(xaxis = list(title = "Year", type = "category", titlefont = f1, tickfont = f1),
         yaxis = list(title = "Number of storms", rangemode = "tozero", tickformat = ",",
                      titlefont = f1, tickfont = f1, tickprefix = "   "), 
         barmode = "stack",
         legend = list(orientation = "h", y = -0.3, font = f1, traceorder = "normal"),
         margin = list(l = 200, b = 400, r = 100),
         annotations = list(x = 1, y = -0.5, text = "Source: NOAA", 
                            showarrow = F, xref = "paper", yref = "paper", 
                            xanchor = "right", yanchor = "auto", xshift = 0, yshift = 0,
                            font = f2))


# ---- Fig 2: Yearly maximum windspeed ----

# Create the chart (the dataframe is defined in prep_data.R)
windspeed_plot <- plot_ly(max_yearly_windspeed, type = 'scatter', mode = 'lines') %>%
  add_trace(x = ~year, y = ~wind, line = list(color = "#453781FF", width = 8)) %>%
  layout(xaxis = list(title = "Year", titlefont = f1, tickfont = f1),
         yaxis = list(title = "Windspeed (knots)", tickformat = ",",
                      titlefont = f1, tickfont = f1, tickprefix = "   "), 
         margin = list(l = 200, b = 400, r = 100),
         showlegend = FALSE,
         annotations = list(x = 1, y = -0.2, text = "Source: NOAA", 
                            showarrow = F, xref = "paper", yref = "paper", 
                            xanchor = "right", yanchor = "auto", xshift = 0, yshift = 0,
                            font = f2))

