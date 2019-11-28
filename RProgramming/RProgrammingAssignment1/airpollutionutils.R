loadAirPollutCsv <- function(directory, id) {
  return(read.csv(file.path(directory, paste(convertTo3DigitsString(id), ".csv", sep = ''))))
}

convertTo3DigitsString <- function(id) {
  if(id < 10){
    return(paste("00", toString(id), sep = ''))
  } else if (id < 100) {
    return(paste("0", toString(id), sep = ''))
  } else {
    return(toString(id))
  }
}