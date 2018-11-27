##################################################
######## Find character frequency ##########
##################################################

letter_freq <- function(my_str){
  my_str = tolower(unlist(str_split(my_str,"")))
  freq = c(rep(0,26))
  for (i in 1:length(my_str)) {
    if(any(letters == my_str[i])){
      j = which(letters == my_str[i])
      freq[j] = freq[j] + 1
    }
  }
  return(freq)
}
