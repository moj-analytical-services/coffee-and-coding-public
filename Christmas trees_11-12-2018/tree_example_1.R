# Originally from: https://tomaztsql.wordpress.com/2016/12/30/quick-r-christmas-tree/

library(ggplot2)

branches <- c(9,8,7,6,5,4,4.5,4,3,2,1,0.8,0.2)

christmas_tree <- data.frame(group = rep(c("l","d"), 
                             each=length(branches)),
                 x = 1:length(branches),
                 y = c(branches, branches*-1))

ggplot() +
  geom_bar(data = christmas_tree, aes(x=x, y=y), stat = "identity", fill = '#00A650', width = .8) +
  coord_flip() +
  theme_void()
