##################################################
######## Find P(typo | cor) Denominator ##########
##################################################

insertion_method <- function(my_str){
  my_str = tolower(unlist(str_split(my_str,"")))
  mat = matrix(0,nrow = 27,ncol = 26)
  for (i in 1:(length(my_str) - 1)) {
    
    if(any(letters == my_str[i]) & any(letters == my_str[i+1])){
      j <- which(letters == my_str[i])
      k <- which(letters == my_str[i + 1])
      
      mat[j,k] <- mat[j,k] + 1
      

    }
    if(any(my_str[i] == " ") & any(letters == my_str[i+1])){
      l <- which(letters == my_str[i + 1])
      mat[27,l] <- mat[27,l] + 1
    }
  
  }
  return(mat)
}



##### Save 100 files denominator matrix
file_name_vec
ground_text <- list(NA)
for (i in 1:length(file_name_vec)) {
  ground_text[[i]] <- readLines(paste("../data/tesseract/",file_name_vec[i],sep=""), warn=FALSE)
}

my_str = tolower(unlist(str_split(unlist(ground_text),"")))

mat <- insertion_method(my_str)
save(mat, file="../output/denominator.RData")
