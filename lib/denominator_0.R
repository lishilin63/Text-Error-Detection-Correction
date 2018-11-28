##################################################
######## Find P(typo | cor) Denominator ##########
##################################################

insertion_method <- function(string){
  string = tolower(unlist(str_split(string,"")))
  mat = matrix(0,nrow = 26,ncol = 26)
  for (i in 1:(length(string) - 1)) {
    
    if(any(letters == string[i]) & any(letters == string[i+1])){
      j <- which(letters == string[i])
      k <- which(letters == string[i + 1])
      
      mat[j,k] <- mat[j,k] + 1

    }
  }
  return(mat)
}

