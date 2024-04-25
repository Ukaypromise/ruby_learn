# frozen_string_literal: true

credentials_list = []

def get_user_input(prompt, validation)
  input = ''
  while input.empty? || !input.match(validation)
    print prompt
    input = gets.chomp
    puts "Please enter a valid #{validation}." if input.empty? || !input.match(validation)
  end
  input
end

loop do
  site_name = get_user_input("Enter your site name or 'exit': ", /\S+/)
  break if site_name.downcase == 'exit'

  username = get_user_input('Enter your username: ', /\S+/)
  password = get_user_input('Enter your password: ', /\S+/)

  credentials = {
    site_name:,
    username:,
    password:
  }

  credentials_list << credentials
  puts 'Credentials added.'
end

puts 'Credentials List:'
credentials_list.each do |credentials|
  puts "Site Name: #{credentials[:site_name]}"
  puts "Username: #{credentials[:username]}"
  puts "Password: #{credentials[:password]}"
  puts '------------------------'
end
