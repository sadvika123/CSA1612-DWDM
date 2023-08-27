input <- mtcars[,c('wt','mpg')]
print(head(input))
plot(x = input$wt, y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(0.5, 3.5),
     ylim = c(15, 30),	
     main = "Weight vs Milage"
)
