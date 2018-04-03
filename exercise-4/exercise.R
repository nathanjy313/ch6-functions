# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(a, b) {
  length_a <- nchar(a)
  length_b <- nchar(b)
  diff <- abs(length_a - length_b)
  min_length <- min(length_a, length_b)
  check <- diff >= min_length
  return(check)
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("nathan","nat")
is_twice_as_long("playing","tired")
is_twice_as_long("hello","hellohello")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(one, two){
  a <- nchar(one)
  b <- nchar(two)
  diff <- a - b
  if (diff > 0) {
    phrase <- paste("Your first string is longger by", diff, "characters")
  } else if (diff < 0) {
    phrase <- paste("Your second string is longer by", abs(diff), "characters" )  
  } else {
    phrase <- "Your strings are the same length"
  }
  return(phrase)
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("ben","ben")
describe_difference("hihihihi","hihi")
describe_difference("hihi","hihihihi")
