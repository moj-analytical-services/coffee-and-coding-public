library(readxl)
library(stringr)

# This script gives possible solutions to the regexercises
# There will be other possible solutions, some of which might be better!

# Create a regex to identify words that start with a consonant and end with a vowel ---------

# Some data to test your regex against
cons_data <- read_excel("Regex_13-03-19/regexercise_data.xlsx", sheet = "ConsVow")

# You can use this code to test - insert your regex where indicated
cons_data$Regex_check <- str_detect(cons_data$Word, "^[^AEIOUaeiou].*[AEIOUaeiou]$")
View(cons_data)



# Create a regex to identify a British mobile phone number ---------

# Some data to test your regex against
mobile_data <- read_excel("Regex_13-03-19/regexercise_data.xlsx", sheet = "Phone number")

# You can use this code to test - insert your regex where indicated

mobile_data$Regex_check <- str_detect(mobile_data$Number, "^(07|\\+447|\\+44 7)(\\s*\\d\\s*){9}$")
View(mobile_data)



# Create a regex to identify a word in ALL CAPS ---------

# Some data to test your regex against
caps_data <- read_excel("Regex_13-03-19/regexercise_data.xlsx", sheet = "Caps")

# You can use this code to test - insert your regex where indicated
caps_data$Regex_check <- str_detect(caps_data$Word, "^[A-Z]+$")
View(caps_data)



# Create a regex to identify a username that is at least 8 characters long and only uses letters and numbers ---------

# Some data to test your regex against
user_data <- read_excel("Regex_13-03-19/regexercise_data.xlsx", sheet = "Username")

# You can use this code to test - insert your regex where indicated
user_data$Regex_check <- str_detect(user_data$Username, "^([a-zA-Z]|\\d){8,}$")
View(user_data)


