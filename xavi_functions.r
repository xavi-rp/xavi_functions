###########################################################################
########         Xavi's functions to make life easier          ############
###########################################################################


# xavi_functions.r

# Created on: under construction

# Contact: Xavier Rotllan-Puig (xavi.rotllan.puig@gmail.com)

# Description: The aim of this script is to gather functions that I usally call
#              a lot of times when working with data
# 
# 


# ------------------------------------------


#### Number of NA's by columns ####
# It returns the number of NA's in a data frame separated by its columns
# x is the data frame to be checked

nasbycols <- function(x){
  nas <- apply(x, 2, function(y) sum(is.na(y)))
  return(nas)
} # end of nasbycols



#### Unique values ####
# It returns a vector with unique elements of another vector (e.g. a column of a data frame)
# x is the vector
# s = TRUE sorts the result

unq <- function(x, s = TRUE){
  if(s){ print("(sorted elements...)"); uq <- sort(unique(x)) } else { print("(unsorted elements...)"); uq <- unique(x) }
  return(uq)
} #end of unq


###