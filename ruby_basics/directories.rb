puts Dir.pwd

path = '/Users/promise/Desktop/ruby_learn/directories'

if Dir.exist?(path)
  Dir.chdir(path)
end

puts "File in #{Dir.pwd} are: "
p Dir.entries(path)
