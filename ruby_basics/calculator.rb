# frozen_string_literal: true

begin
puts 'Welcome to Caps Calculator'
puts '---------------------------'

puts 'What do you wanna do?'
puts '1. Add'
puts '2. Subtract'
puts '3. Multiply'
puts '4. Divide'
puts '5. Exit'
choice = gets.chomp.to_i
case choice
when 1
  puts 'Enter first number'
  num1 = gets.chomp.to_i
  puts 'Enter second number'
  num2 = gets.chomp.to_i
  puts "The sum is #{num1 + num2}"
when 2
  puts 'Enter first number'
  num1 = gets.chomp.to_i
  puts 'Enter second number'
  num2 = gets.chomp.to_i
  puts "The difference is #{num1 - num2}"
when 3
  puts 'Enter first number'
  num1 = gets.chomp.to_i
  puts 'Enter second number'
  num2 = gets.chomp.to_i
  puts "The product is #{num1 * num2}"
when 4
  puts 'Enter first number'
  num1 = gets.chomp.to_i
  puts 'Enter second number'
  num2 = gets.chomp.to_i
  puts "The quotient is #{num1 / num2}"
when 5
  puts 'Exiting...'
else
  puts 'Invalid choice'
end while choice != 5
end
