pollutantmean <- function(directory, pollutant, ids=1:332) {
  values <- vector()
  for (id in ids) {
    df <- loadAirPollutCsv(directory, id)
    pollutants <- df[[pollutant]][complete.cases(df[[pollutant]])]
    values <- c(values, pollutants)
  }
  return(mean(values))
}