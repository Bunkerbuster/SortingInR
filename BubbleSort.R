# Bubble Sort function

# bubblesort is a function that takes an array arr as its input and sorts it using the Bubble Sort algorithm.
# n is used to store the length of the input array arr, which determines the number of elements in the array.
# The outer loop (controlled by i) runs from 1 to n - 1. It represents the number of passes needed to sort the entire array. 
# In each pass, the largest unsorted element "bubbles up" to its correct position at the end of the array.
# The inner loop (controlled by j) runs from 1 to (n - i). It iterates through the unsorted portion of the array.
# Inside the inner loop, we compare arr[j] and arr[j + 1]. If arr[j] is greater than arr[j + 1], it means they are in the wrong order, 
# and we need to swap them to sort the array in ascending order.
# The swap is performed using a temporary variable temp. We store the value of arr[j] in temp, assign the value of arr[j + 1] to arr[j, 
# and finally, assign the value of temp to arr[j + 1], effectively swapping the two elements.
# After the inner loop completes for a pass, the largest element for that pass is moved to the last position of the array.
# The function returns the sorted array arr after all passes are completed.
# Bubble Sort is not the most efficient sorting algorithm, especially for large datasets, but it is a simple sorting algorithm that helps to illustrate the basic concepts of sorting.

BubbleSort <- function(arr) {
  # Get the length of the input array
  n <- length(arr)  
  for (i in 1:(n - 1)) {
    for (j in 1:(n - i)) {
      if (arr[j] > arr[j + 1]) {
        # Swap arr[j] and arr[j + 1] if they are in the wrong order
        temp <- arr[j]
        arr[j] <- arr[j + 1]
        arr[j + 1] <- temp
      }
    }
  }
  # Return the sorted array
  return(arr)  
}
