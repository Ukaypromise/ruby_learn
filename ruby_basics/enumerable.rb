# frozen_string_literal: true

arr = [1, 2, 3, 4, 5, 6]

arr.any? { |e| e > 3 }

puts(arr.all? { |e| e > 3 })
