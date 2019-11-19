rankhospital <- function(state, outcome, num = 'best') {
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
  
  outcome_state <- outcomes[which(outcomes$State==state),]
  hospitals <- outcome_state[complete.cases(outcome_state[[outcome]]),][order(outcome_state[complete.cases(outcome_state[[outcome]]),][[outcome]],outcome_state[complete.cases(outcome_state[[outcome]]),]$Hospital.Name),]
  if (num == 'best'){
    return(hospitals$Hospital.Name[1])
  } else if (num == 'worst'){
    return(hospitals$Hospital.Name[length(hospitals$Hospital.Name)])
  } else if (num > length(hospitals$Hospital.Name)) {
    return(NA)
  }else {
    return(hospitals$Hospital.Name[num])
  }
}