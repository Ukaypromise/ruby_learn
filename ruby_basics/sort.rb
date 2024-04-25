# frozen_string_literal: true

# Bubble Sort
def sort(arr)
  array_length = arr.length
  return arr if array_length < 2

  swapped_elements = true

  while swapped_elements
    swapped_elements = false

    (array_length - 1).times do |i|
      element = arr[i]
      next_element = arr[i + 1]

      next unless element > next_element

      arr[i] = next_element
      arr[i + 1] = element
      swapped_elements = true
    end
  end

  arr
end

p sort [23, 70, 5, 61, 7, 18, 29, 100, 11, 12, 80]
# => [5, 7, 11, 12, 18, 23, 29, 61, 70, 80, 100]

# def bubble_sort(arr)
#   n = arr.length
#   swapped = true

#   while swapped
#     swapped = false
#     (n - 1).times do |i|
#       if arr[i] > arr[i + 1]
#         arr[i], arr[i + 1] = arr[i + 1], arr[i] # Swap elements
#         swapped = true
#       end
#     end
#   end

#   arr
# end

# # Example usage:
# unsorted_array = [64, 34, 25, 12, 22, 11, 90]
# sorted_array = bubble_sort(unsorted_array)
# puts "Sorted array: #{sorted_array.join(", ")}"
