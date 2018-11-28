##################################################
######## Find Candidates ##########
##################################################

#load("../output/l1.RData")

library(stringi)

candidate <- function(my_word){
  list_candidate <- list(NA)
  
  # insertion
  list_word <- list(NA)
  for (i in 1:nchar(my_word)) {
    list_word[[i]] <- my_word
    stri_sub(list_word[[i]],i,i) <- ""
  }
  vec_word_insert <- unlist(list_word)
  insert_candidate <- vec_word_insert[!is.na(match(vec_word_insert,l2) > 0)]
  
  # Deletion
  list_word <- list(NA)
  list_word[[1]] <- paste0(letters,my_word)
  for (i in 2:(nchar(my_word)+1)) {
    list_word[[i]] <- my_word
    stri_sub(list_word[[i]],i,i-1) <- letters
  }
  vec_word_delete <- unlist(list_word)
  delete_candidate <- vec_word_delete[!is.na(match(vec_word_delete,l2) > 0)]
  
  # substitution
  list_word <- list(NA)
  for (i in 1:nchar(my_word)) {
    list_word[[i]] <- my_word
    stri_sub(list_word[[i]],i,i) <- letters
  }
  vec_word_substitute <- unlist(list_word)
  substitute_candidate <- vec_word_substitute[!is.na(match(vec_word_substitute,l2) > 0)]
  
  # reversal
  list_word <- list(NA)
  for (i in 1:(nchar(my_word)-1)) {
    list_word[[i]] <- my_word
    stri_sub(list_word[[i]],i,i) <- stri_sub(my_word,i+1,i+1)
    stri_sub(list_word[[i]],i+1,i+1) <- stri_sub(my_word,i,i)
  }
  vec_word_reversal <- unlist(list_word)
  reversal_candidate <- vec_word_reversal[!is.na(match(vec_word_reversal,l2) > 0)]
  
  list_candidate[[1]] <- unique(insert_candidate)
  list_candidate[[2]] <- unique(delete_candidate)
  list_candidate[[3]] <- unique(substitute_candidate)
  list_candidate[[4]] <- unique(reversal_candidate)
  
  return(list_candidate)
}