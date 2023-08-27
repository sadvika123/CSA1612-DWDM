d=read.csv("C:\\Users\\arunk\\OneDrive\\Desktop\\DWDM\\set1.csv")
View(d)
summary(d)
plot(d$Glucose,d$DiabetesPedigreeFunction)

#Data Partitioning
p1=runif(nrow(d))
p2=order(p1)
training_ds=d[p2[1:25],]
test_ds=d[p2[26:39],]

Multiple_resgression =lm( DiabetesPedigreeFunction  ~ Glucose+Age, data=training_ds)
abline(Multiple_resgression,col="red")
summary(Multiple_resgression)
plot(Multiple_resgression)

pred_values=predict(Multiple_resgression,newdata = test_ds)
test_ds$pred_DiabetesPedigreeFunction=pred_values
View(test_ds)
