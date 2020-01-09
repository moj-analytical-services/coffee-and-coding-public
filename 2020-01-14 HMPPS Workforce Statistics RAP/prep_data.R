# ---------------------------------------------------------
# This script loads in the storms dataset and generates
# figures for the publication based on it
# ---------------------------------------------------------

# Load packages
library(dplyr)
library(stringr)
library(datasets)
library(glue)

# Load some in-built storms data from the datasets package
data(storms)

# Select one row for each storm, based on the fastest windspeed
storms_max_wind <- storms %>%
  # Arrange by the 'wind' column, in descending order 
  arrange(desc(wind)) %>%
  # For each combination of year and name (as some names are repeated years later)
  # Select the first row (with the greatest windspeed)
  group_by(year, name) %>%
  filter(row_number() == 1) %>%
  ungroup()

# Select one row for each storm, based on the maximum diameter
storms_max_diameter <- storms %>%
  arrange(desc(ts_diameter)) %>%
  group_by(year, name) %>%
  filter(row_number() == 1) %>%
  ungroup()

# Select one row for each storm, based on the minimum pressure
storms_min_pressure <- storms %>%
  arrange(pressure) %>%
  group_by(year, name) %>%
  filter(row_number() == 1) %>%
  ungroup()


# ------ Number of storms -------

# Calculate the total number of storms in the chosen year
num_storms_this_year <- storms_max_wind %>%
  filter(year == this_year) %>%
  nrow()

# Calculate the total number of storms in the previous year
num_storms_last_year <- storms_max_wind %>%
  filter(year == prev_year) %>%
  nrow()

# Calculate change and percentage change since previous year
num_storms_yearly_change <- num_storms_this_year - num_storms_last_year
num_storms_yearly_change_perc <- (num_storms_yearly_change / num_storms_last_year) * 100

# Calculate number of hurricanes in the chosen year
num_hu_storms_this_year <- storms_max_wind %>%
  filter(year == this_year,
         status == "hurricane") %>%
  nrow()

# Calculate number of tropical storms in the chosen year
num_ts_storms_this_year <- storms_max_wind %>%
  filter(year == this_year,
         status == "tropical storm") %>%
  nrow()

# Calculate number of tropical depressions in the chosen year
num_td_storms_this_year <- storms_max_wind %>%
  filter(year == this_year,
         status == "tropical depression") %>%
  nrow()

# Generate some text for the total number of storms headline
num_storms_yearly_amount_text <- glue("{abs(num_storms_yearly_change)} ({round(abs(num_storms_yearly_change_perc), 1)}%)")

num_storms_headline_text <- case_when(num_storms_yearly_change_perc >= no_change_thres ~ 
                                      glue("an increase of {num_storms_yearly_amount_text}"),
                                    num_storms_yearly_change_perc > -no_change_thres & num_storms_yearly_change_perc < no_change_thres ~ 
                                      "a constant number of",
                                    num_storms_yearly_change_perc <= -no_change_thres ~ 
                                      glue("a decrease of {num_storms_yearly_amount_text}"))

# Generate some text for section 1
num_storms_yearly_text <- case_when(num_storms_yearly_change_perc >= no_change_thres ~ 
                                      glue("increased from {num_storms_last_year} in {prev_year} to
                                           {num_storms_this_year} in {this_year}"),
                                    num_storms_yearly_change_perc > -no_change_thres & num_storms_yearly_change_perc < no_change_thres ~ 
                                      glue("remained approximately the same between {prev_year} and {this_year}"),
                                    num_storms_yearly_change_perc <= -no_change_thres ~ 
                                      glue("decreased from {num_storms_last_year} in {prev_year} to
                                           {num_storms_this_year} in {this_year}"))


# ------ Maximum windspeed -------

# Calculate the maximum windspeed for each year
max_yearly_windspeed <- storms_max_wind %>%
  # Reduce dataframe to only the 'year' and 'wind' fields
  select(year, wind) %>%
  # Filter so only the past 20 years are included
  filter(year >= this_year - 20 & year <= this_year) %>%
  # Select the row with the greatest windspeed for each year
  group_by(year) %>%
  arrange(desc(wind)) %>%
  filter(row_number() == 1) %>%
  # Arrange into chronological order
  arrange(year) %>%
  ungroup()

# Calculate maximum wind speed for the chosen year
max_windspeed_this_year <- max_yearly_windspeed %>%
  filter(year == this_year) %>%
  pull(wind)

# Calculate maximum wind speed for the previous year
max_windspeed_last_year <- max_yearly_windspeed %>%
  filter(year == prev_year) %>%
  pull(wind)

# Calculate change and percentage change since previous year
max_windspeed_yearly_change <- max_windspeed_this_year - max_windspeed_last_year
max_windspeed_yearly_change_perc <- (max_windspeed_yearly_change / max_windspeed_last_year) * 100

# Generate some text for the maximum windspeed headline
max_windspeed_yearly_amount_text <- glue("{abs(max_windspeed_yearly_change)} ({round(abs(max_windspeed_yearly_change_perc), 1)}%)")

max_windspeed_headline_text <- case_when(max_windspeed_yearly_change_perc >= no_change_thres ~ 
                                           glue("an increase of {max_windspeed_yearly_amount_text} knots compared to"),
                                         max_windspeed_yearly_change_perc > -no_change_thres & max_windspeed_yearly_change_perc < no_change_thres ~ 
                                           "approximately the same as",
                                         max_windspeed_yearly_change_perc <= -no_change_thres ~ 
                                           glue("a decrease of {max_windspeed_yearly_amount_text} knots compared to"))

# Generate some text for section 2
max_windspeed_yearly_text <- case_when(max_windspeed_yearly_change_perc >= no_change_thres ~ 
                                         glue("increased from {max_windspeed_last_year} knots in {prev_year} to
                                              {max_windspeed_this_year} knots in {this_year}"),
                                       max_windspeed_yearly_change_perc > -no_change_thres & max_windspeed_yearly_change_perc < no_change_thres ~ 
                                         glue("remained approximately the same between {prev_year} and {this_year}"),
                                       max_windspeed_yearly_change_perc <= -no_change_thres ~ 
                                         glue("decreased from {max_windspeed_last_year} knots in {prev_year} to
                                              {max_windspeed_this_year} knots in {this_year}"))

# ------ Maximum diameter -------

# Calculate the max storm diameter for the chosen year
max_diameter_this_year <- storms_max_diameter %>%
  filter(year == this_year) %>%
  filter(ts_diameter == max(ts_diameter)) %>%
  pull(ts_diameter) %>%
  round(1)

# Calculate the max storm diameter for the previous year
max_diameter_last_year <- storms_max_diameter %>%
  filter(year == prev_year) %>%
  filter(ts_diameter == max(ts_diameter)) %>%
  pull(ts_diameter) %>%
  round(1)

# Calculate change and percentage change since previous year
max_diameter_yearly_change <- max_diameter_this_year - max_diameter_last_year
max_diameter_yearly_change_perc <- (max_diameter_yearly_change / max_diameter_last_year) * 100

# Generate some text for the maximum diameter headline
max_diameter_yearly_amount_text <- glue("{round(abs(max_diameter_yearly_change), 1)} ({round(abs(max_diameter_yearly_change_perc), 1)}%)")

max_diameter_headline_text <- case_when(max_diameter_yearly_change_perc >= no_change_thres ~ 
                                          glue("an increase of {max_diameter_yearly_amount_text} nautical miles compared to"),
                                        max_diameter_yearly_change_perc > -no_change_thres & max_diameter_yearly_change_perc < no_change_thres ~ 
                                          "approximately the same as",
                                        max_diameter_yearly_change_perc <= -no_change_thres ~ 
                                          glue("a decrease of {max_diameter_yearly_amount_text} nautical miles compared to"))


# ------ Minimum pressure -------

# Calculate the minimum pressure for the chosen year
min_pressure_this_year <- storms_min_pressure %>%
  filter(year == this_year) %>%
  filter(pressure == min(pressure)) %>%
  pull(pressure)

# Calculate the minimum pressure for the previous year
min_pressure_last_year <- storms_min_pressure %>%
  filter(year == prev_year) %>%
  filter(pressure == min(pressure)) %>%
  pull(pressure)

# Calculate change and percentage change since previous year
min_pressure_yearly_change <- min_pressure_this_year - min_pressure_last_year
min_pressure_yearly_change_perc <- (min_pressure_yearly_change / min_pressure_last_year) * 100

# Generate some text for the minimum pressure headline
min_pressure_yearly_amount_text <- glue("{abs(min_pressure_yearly_change)} ({round(abs(min_pressure_yearly_change_perc), 1)}%)")

min_pressure_headline_text <- case_when(min_pressure_yearly_change_perc >= no_change_thres ~ 
                                          glue("an increase of {min_pressure_yearly_amount_text} millibars compared to"),
                                        min_pressure_yearly_change_perc > -no_change_thres & min_pressure_yearly_change_perc < no_change_thres ~ 
                                          "approximately the same as",
                                        min_pressure_yearly_change_perc <= -no_change_thres ~ 
                                          glue("a decrease of {min_pressure_yearly_amount_text} millibars compared to"))


