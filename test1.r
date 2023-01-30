# R is annoying with getting input so make your own input function like this to get around it.
input <- function(prompt) {
  if (interactive()) {
    return(readline(prompt))
  } else {
    cat(prompt)
    return(readLines("stdin", n=1))
  }
}

num1 <- 1L
num2 <- 2L
num3 <- input("Enter a number: ")
num3 <- as.integer(num3)

print(num1+num2+num3)
