
compute_stats <- function(x){
  list(Mean = mean(x), Median = median(x), Variance=var(x), InterQuartileRange=IQR(x), Minimum = min(x), 
            Maximum = max(x))
}
head(sapply(mtcars,compute_stats),100)

library(dslabs)
data("na_example")
na_example

TotalNA <- sum(is.na(na_example))
IndexNA <- which(is.na(na_example))
strNA <- paste0('NA ','Amount ','-> ',TotalNA,'\n')
print(strNA)
print('Indeces of the NAs')
print(IndexNA)

mean <- mean(na_example,na.rm = TRUE)
stdev <- sd(na_example, na.rm=TRUE)
meanStr <- paste0('Mean (w/o NA) ->',mean)
stdevStr <- paste0('Standart deviation (w/o NA) ->',stdev)
print(meanStr)
print(stdevStr)

mean <- mean(na_example,na.rm = TRUE)
arr1 <- na_example
arr1[is.na(na_example)] <- mean
arr1Str <- paste0('New Dataset With Mean Replacing NAs')
print(arr1Str)
print(arr1)
stdev <- sd(na_example, na.rm=TRUE)
arr2 <- na_example
arr2[is.na(na_example)] <- stdev
arr2Str <- paste0('New Dataset With Standart Deviation Replacing NAs')
print(arr2Str)
print(arr2)


mean <- mean(na_example,na.rm = TRUE)
arr1 <- na_example
arr1[is.na(na_example)] <- mean
stdev <- sd(na_example, na.rm=TRUE)
arr2 <- na_example
arr2[is.na(na_example)] <- stdev

mean1 <- mean(arr1)
mean2 <- mean(arr2)
std1 <- sd(arr1)
std2 <- sd(arr2)
print('Mean of Mean Replacing NAs')
print(mean1)
print('Mean of StDev Replacing NAs')
print(mean2)
print('StDev of Mean Replacing NAs')
print(std1)
print('StDev of StDev Replacing NAs')
print(std2)

