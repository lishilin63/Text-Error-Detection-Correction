##################################################
######## Find P(typo | cor) Denominator ##########
##################################################

insertion_method <- function(my_str){
  my_str = tolower(unlist(str_split(my_str,"")))
  mat = matrix(0,nrow = 26,ncol = 26)
  for (i in 1:(length(my_str) - 1)) {
    
    if(any(letters == my_str[i]) & any(letters == my_str[i+1])){
      j <- which(letters == my_str[i])
      k <- which(letters == my_str[i + 1])
      
      mat[j,k] <- mat[j,k] + 1

    }
  }
  return(mat)
}




