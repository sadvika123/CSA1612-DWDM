x <-c(150,174, 138, 186, 128, 136, 171, 163, 152, 131)
y<-c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
relation <-lm(y~x)
print(summary(relation))
a <-data.frame(x=170)
result <- predict(relation,a)
print(result)
png(file = "linear_regression.png")  
plot(y,x,col = "red",main = "Height and Weight Regression",abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")  
dev.off()  


