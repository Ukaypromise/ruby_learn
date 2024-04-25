# frozen_string_literal: true

arr = %w[ant bear cat dog elk]

arr2 = arr.reject do |element|
  element == 'bear'
end

p arr2
p arr
