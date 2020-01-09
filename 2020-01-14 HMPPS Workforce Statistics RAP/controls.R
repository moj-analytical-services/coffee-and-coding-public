# ---------------------------------------------------------
# This script defines variables that need or might need
# updating for a new publication.
# ---------------------------------------------------------

# Load package
library(lubridate)

# ------ Update these variables for each new quarter ------

# Date of the last day of the chosen quarter
end_of_year <- "31-Dec-2015" 

# Date of publication
publication_date <- "14-Jan-2020"

# Date of the next publication
next_publication_date <- "14-Apr-2020"

# ----------------------------------------------------------


# Format dates
end_of_year <- dmy(end_of_year)
end_of_year_date_text <- format(end_of_year, "%d %B %Y")
publication_date <- format(dmy(publication_date), "%d %B %Y")
next_publication_date  <- format(dmy(next_publication_date), "%d %B %Y")

# Calculate date at the end of the previous year
prev_year_date <- end_of_year - years(1)

# Get chosen year and previous year as numbers
prev_year <- as.numeric(format(prev_year_date, "%Y"))
this_year <- as.numeric(format(end_of_year, "%Y"))

# Threshold percentage change magnitude, below which we report no substantial change
no_change_thres <- 0.5
