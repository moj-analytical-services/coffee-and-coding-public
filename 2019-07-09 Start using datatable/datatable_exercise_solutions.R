#### Possibly solutions to the exercises from the data.table Coffee & Coding session
#### (There will be other acceptable solutions!)

library(data.table)
chick_weight <- as.data.table(ChickWeight)

## Which diet is being fed to the most chicks?

# Need to isolate unique chicks, as otherwise chicks will get counted multiple times

# Option 1: Assume that all chicks are weight at time 1
# The first part provides a new table, but you can also order and select the Diet value for the first row
chick_weight[Time == 0, .N, by = Diet][order(-N)][1, Diet]

# Option 2: Ensure you only have unique chick-diet combinations
top_diet <- unique(chick_weight[, .(Diet, Chick)])
top_diet[, .N, by = Diet][order(-N)][1, Diet]

## What is the average (mean) weight of a chick at time 21 for each diet?

chick_weight[Time == 21, mean(weight), by = Diet]

# Alternative answer with name for column
chick_weight[Time == 21, .(average_weight = mean(weight)), by = Diet]

## Add a new column that is TRUE when weight is 100 or more

# In one line
chick_weight[, heavy := ifelse(weight < 100, FALSE, TRUE)]

# Alternative with subsetting
chick_weight[weight < 100, heavy := FALSE]
chick_weight[weight >=100, heavy := TRUE]

## Make every column a character class

chick_weight <- chick_weight[, lapply(.SD, as.character)]

## Rename the columns

setnames(chick_weight, colnames(chick_weight), c("Weight", "Time in days", "Chick number", "Diet reference", "Heavy"))
