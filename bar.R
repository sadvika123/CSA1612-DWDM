temperatures <- c(20, 22, 25, 29, 23, 27, 28)

result <- barplot(temperatures, 
                  main = "Maximum Temperatures in a Week", 
                  xlab = "Degree Celsius",
                  ylab = "Day",
                  names.arg = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
                  col = "blue",
                  
)
print(result)
