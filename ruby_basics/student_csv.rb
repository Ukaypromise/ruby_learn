require 'csv'

not_exit = true

# The validator method should go here
def validate_name?(name)
  !name.nil? && name.is_a?(String) && !name.empty?
end

def validate_age?(age)
  age.to_i.to_s == age && age.to_i > 0
end

while not_exit do

 print "Please enter your name or exit: "
 name = gets.chomp
 print "Please enter your age or exit: "
 age = gets.chomp

    if validate_name?(name) && validate_age?(age)
        csv_string = "#{name}, #{age}"
        parsed_string = CSV.parse(csv_string)

        CSV.open('student.csv', 'a') do |csv|
          csv << parsed_string
          puts 'Data successfully written to students.csv.'
        end
        puts "Do you want to continue (yes/no): "
        input = gets.chomp
        if input.downcase != 'yes'
            not_exit = false
        end
    else
      puts 'Invalid input. Please enter a valid name and a valid non-zero number greater than 0.'
    end

end
