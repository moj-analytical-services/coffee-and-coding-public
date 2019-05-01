library(ggplot2)
library(data.table)

triangle1 <- data.table(group = c(1,1,1), polygon.x = c(1,3,5), polygon.y = c(1,2,1))
triangle2 <- data.table(group = c(1,1,1), polygon.x = c(1.5,3,4.5), polygon.y = c(1.5,2.5,1.5))
triangle3 <- data.table(group = c(1,1,1), polygon.x = c(2,3,4), polygon.y = c(2,3.5,2))
star1 <- data.table(group = c(1), 
                    polygon.x = c(2.8, 2.9, 2.8, 2.95, 3, 3.05, 3.2, 3.1, 3.2, 3), 
                    polygon.y = c(3.3, 3.55, 3.7, 3.7, 3.9, 3.7, 3.7, 3.55, 3.3, 3.45))
baubles1 <- data.table(x.point = c(1.25, 2.8, 2.1, 3.5, 4.4, 2.1, 3.75, 2.3, 3.2, 2.9, 2.8), 
                       y.point = c(1.1, 1.2, 1.4, 1.6, 1.3, 1.9, 2.1, 2.3, 2.7, 3, 2), 
                       point.size = 25, colour = c(8, 90, 27, 134, 75, 455))



tree <- ggplot() +
  geom_polygon(data = triangle1, aes(x = polygon.x, y = polygon.y, group = group), color = "#00A650", fill = "#00A650") +
  geom_polygon(data = triangle2, aes(x = polygon.x, y = polygon.y, group = group), color = "#00A650", fill = "#00A650") +
  geom_polygon(data = triangle3, aes(x = polygon.x, y = polygon.y, group = group), color = "#00A650", fill = "#00A650") +
  geom_polygon(data = star1, aes(x = polygon.x, y = polygon.y, group = group), color = "gold", fill = "gold") +
  geom_point(data = baubles1, aes(x = x.point, y = y.point), color = "red", size = 8,
             show.legend = F) +
  theme_void()

tree
