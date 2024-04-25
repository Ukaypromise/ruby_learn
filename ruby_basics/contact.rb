# frozen_string_literal: true

not_exit = true

contact_list = []

while not_exit
  contact = {}
  print 'Enter your contact name or exit:  '
  input = gets.chomp

  if input == 'exit'
    not_exit = false
  else
    contact[:name] = input
    print 'Enter contact phone number: '
    phone_input = gets.chomp
    contact[:phone] = phone_input
    print 'Enter your contact email: '
    email_input = gets.chomp
    contact[:email] = email_input
    print 'Enter your contact address: '
    address_input = gets.chomp
    contact[:address] = address_input

    puts contact
    contact_list << contact
    puts contact_list
  end
end
