# sortedArray <- mergeSortArray(unsortedArray)

mergeSortArray <- function(unsortedArray) {
  if (length(unsortedArray) <= 1) {
    return(unsortedArray)
  }

  middle <- floor(length(unsortedArray) / 2L)
  left <- unsortedArray[1:middle]
  right <- unsortedArray[(middle + 1L):length(unsortedArray)]

  left <- mergeSortArray(left)
  right <- mergeSortArray(right)

  return(mergeHelper(left, right, unsortedArray))
}

