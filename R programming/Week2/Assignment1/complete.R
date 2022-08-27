#### basic way ####
complete <- function(dir, id) {
 big_data <- data.frame(matrix(ncol = 2 , nrow = 0, dimnames = list(NULL,c("id","nobs"))))
 for(i in id) {
   data <- read.csv(paste(dir,list.files(dir)[i],sep = "/"))
   big_data[nrow(big_data)+1,] <- c(i , nrow(data[complete.cases(data),]))
 }
 return(big_data)
}