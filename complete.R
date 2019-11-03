source("airpollutionutils")

complete <- function(directory, ids = 1:332) {
  out_df <- setNames(data.frame(matrix(ncol = 2, nrow = 0)), c("id", "nobs"))
  for(id in ids) {
    df = loadAirPollutCsv(directory, id)
    out_df[]
    nrow(df[complete.cases(df),])
  }
  
  
}