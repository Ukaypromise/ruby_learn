# frozen_string_literal: true

def count_multibyte_char(str)
  str.each_byte do |x|
    return x.bytesize if x.bytesize > 1
  end
end

puts count_multibyte_char('¥1000')

def test(&block)
  block.call
end

test { puts 'I am a boy.' }

puts ->(x) { x * 2 }.call(8)
puts ->(x) { x * 2 }.call(5)

$greeting = 'Hello'
