#### basic way ####
corr <- function(dir,threshold = 0) {
  big <- numeric()
  for ( i in 1:332) {
    data <- read.csv(paste(dir,list.files(dir)[i],sep = "/"))
    data <- data[complete.cases(data),][nrow(data) > threshold]
    big <- append(big,cor(data$sulfate,data$nitrate))     
  }
  return(big)
}