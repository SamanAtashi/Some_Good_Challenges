# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort

def bubble_sort(arr)
    # start as if it is NOT sorted
    sorted = false
    # but what if it was (meaning; it was sorted) and we want to check
    while !sorted
        # assuming we do NOT needed to swap , we must say TRUE ,it means all sorted
        sorted = true
        # Check just in case it was NOT sorted
        (arr.length-1).times do |item|
            if arr[item] > arr[item+1]
                # Swap
                arr[item],arr[item+1] = arr[item+1],arr[item]
                # since we swaped right now --> we may need to swap again
                # so go back to NOT sorted baby
                sorted = false
            end
        end
    end
    arr
end

def bubble_sort(array)
   sorted = false
   while !sorted
        sorted = true
      (0...array.length - 1).each do |i|
           if array[i] > array[i + 1]
               array[i], array[i + 1] = array[i + 1], array[i]
               sorted = false
           end
       end
   end
  array
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]
