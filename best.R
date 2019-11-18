best <- function(state, outcome) {
  outcome_available <- c("heart attack","heart failure","pneumonia")
  ## Read outcome data
  outcomes <- read.csv("../CourseraMaterial/Week4/outcome-of-care-measures.csv", colClasses = "character")
  # Clean data set
  for (i in c(11,17,23)) {
    outcomes[,i] <- as.numeric(outcomes[,i])
  }
  names(outcomes)[11] <- outcome_available[1]
  names(outcomes)[17] <- outcome_available[2]
  names(outcomes)[23] <- outcome_available[3]
  ## Check that state and outcome are valid
  if (!state %in% unique(outcomes$State) | !outcome %in% outcome_available){
    stop("State or outcome does not exist")
  }
  ## Return hospital name in that state with lowest 30-day death rate
  outcome_state <- outcomes[which(outcomes$State==state),]
  best_hospitals <- outcome_state[which(outcome_state[[outcome]]==min(outcome_state[complete.cases(outcome_state[[outcome]]),][[outcome]])),]$Hospital.Name
  return(best_hospitals[order(best_hospitals)])
}