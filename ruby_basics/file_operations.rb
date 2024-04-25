# frozen_string_literal: true

# f = File.open('userinput.txt', 'a')

# 2.times do
#   puts 'Please write some text: '
#   text = gets.chomp
#   f.write("\nHello world. Time is #{text}\n")
# end

# f.close
filename = 'd_rohstoffpreise.xlsx'
if File.exist?(filename)
  f = File.open(filename, 'r')
  modified_mdate = File.stat(filename).birthtime
  modified_cdate = File.stat(filename).atime

  puts "File was last modified on #{modified_mdate}"
  puts "File was last accessed on #{modified_cdate}"
else
  puts 'File does not exist'
end

puts f.read
f.close
