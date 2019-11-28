complete <- function(directory, ids = 1:332) {
  out_df <- data.frame()
  for(id in ids) {
    df = loadAirPollutCsv(directory, id)
    nob <- nrow(df[complete.cases(df),])
    out_df <- rbind(out_df, c(id, nob))
  }
  names(out_df) <- c("id", "nobs")
  return(out_df)
}