# K Means 
#You must set the directory first.Go to files, More and set directory
#Create a vector to store the file:
Belephant <- read.csv('Belephant.csv')

#Select the columns you want to work with:
#In this case just column 2(CreditScore) and 3(Purchases)
X <- Belephant[2:3]

#Let's check some Measures:
summary(Belephant)


#This k means uses k=5 for this cluster.... You can use different k:
kmeans <- kmeans(X, 5, iter.max = 300, nstart = 5)


#install the library cluster:
library(cluster)

#import clusplot() function and graph the clusters:


clusplot(X,
         kmeans$cluster,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 5,
         span = TRUE,
         main = paste('Clustering Big Elephant'),
         xlab = "CREDIT SCORE",
         ylab = "Purchases")









