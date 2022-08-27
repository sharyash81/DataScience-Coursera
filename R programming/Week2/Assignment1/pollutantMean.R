#### basic way ####
pollutantmean <- function(dir,pollutant,id) {
  pollutant_list <- numeric()
  for (i in id) {
    data <- read.csv(paste(dir,list.files(dir)[i],sep = "/"))
    pollutant_list <- append(pollutant_list,data[pollutant][!is.na(data[pollutant])])
  }
  mean(pollutant_list)
}
