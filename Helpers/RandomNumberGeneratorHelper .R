


# How to Use
# randomNumbers <- RandomNumberGeneratorHelper(_ArraySize = 50)

RandomNumberGeneratorHelper <- function(_ArraySize = 100) {
  if (_ArraySize <= 0) {
    stop("Array size must be a positive integer.")
  }

  dataset <- integer(_ArraySize)
  random <- sample(1:10000, _ArraySize, replace = TRUE)

  for (i in 1:_ArraySize) {
    dataset[i] <- random[i]
  }

  return(dataset)
}