
compute_stats <- function(x){
  list(Mean = mean(x), Median = median(x), Variance=var(x), InterQuartileRange=IQR(x), Minimum = min(x), 
            Maximum = max(x))
}
head(sapply(mtcars,compute_stats),100)


  
