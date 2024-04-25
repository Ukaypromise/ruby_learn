# frozen_string_literal: true

# def helpful(input)
#   return input if input > 3

#   puts input
#   helpful(input + 1)

# end

# hash = { foo: 'bar', baz: 'qux' }

# hash.select do |v|
#   puts v
# end

# e = (1..3).chain([4,6])
# puts e.to_a

def calculate(number)
  if number.zero?
    0
  else
    number + calculate(number - 1)
  end
end

puts calculate(3)
