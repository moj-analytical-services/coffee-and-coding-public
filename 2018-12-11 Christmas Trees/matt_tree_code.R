# Originally from: https://tomaztsql.wordpress.com/2016/12/30/quick-r-christmas-tree/

library(ggplot2)
library(dplyr)

branches <- c(0.5,9,8,7,6,5,4,4.5,4,3,2,1,0.8,0.2)

christmas_tree <- data.frame(group = rep(c("l","d"), 
                             each=length(branches)),
                 x = 1:length(branches),
                 y = c(branches, branches*-1))

christmas_tree <- christmas_tree %>% dplyr::mutate(bauble = c(0, runif(5, -6, 6), runif(5, -2.5, 2.5), runif(2, -1, 1), 0,
                                                              0, runif(5, -6, 6), runif(5, -2.5, 2.5), runif(2, -1, 1), 0))

vector <- c("#8B4513", rep('#00A650', 12), "#FFD700", "#8B4513", rep('#00A650', 12), "#FFD700")
vector_2 <- c(rep(c("#8B4513", rep("red", 12), "#FFD700"),2))

ggplot(data = christmas_tree) +
  geom_bar(aes(x=x, y=y), stat = "identity", fill = vector, width = .8) +
  coord_flip() +
  theme_void() +
  labs(title = "CHRISTMAS TREE") +
  geom_point(aes(x=x, y = bauble), colour =  vector_2)
