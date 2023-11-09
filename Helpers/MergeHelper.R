mergeHelper <- function(left, right, unsortedArray) {
  result <- vector(mode = "integer", length = length(left) + length(right))
  i <- 0L
  j <- 0L
  k <- 0L

  while (i < length(left) && j < length(right)) {
    if (left[i] < right[j]) {
      result[k] <- left[i]
      i <- i + 1L
    } else {
      result[k] <- right[j]
      j <- j + 1L
    }
    k <- k + 1L
  }

  while (i < length(left)) {
    result[k] <- left[i]
    i <- i + 1L
    k <- k + 1L
  }

  while (j < length(right)) {
    result[k] <- right[j]
    j <- j + 1L
    k <- k + 1L
  }

  return(result)
}