corr <- function(directory, threshold = 0) {
  out_corr <- vector()
  for(id in 1:332) {
    df = loadAirPollutCsv(directory, id)
    if(complete(directory,id)$nobs > threshold) {
      out_corr <- append(out_corr, cor(df[complete.cases(df),]$nitrate, df[complete.cases(df),]$sulfate))
    }
  }
  return(out_corr)
}