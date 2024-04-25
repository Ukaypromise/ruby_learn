not_exit = true

while not_exit do
  print "Please enter your todo or exit: "
  todo = gets.chomp

  if todo == 'exit'
    puts "Thank you for using Todo App"
    puts "Here are your Todos: "
    todo_file = File.open('todo.txt', 'r')
    puts todo_file.read
    not_exit = false
  else
    todo = "Todo: #{todo}\n"

    File.open('todo.txt', 'a') do |file|
      file.write(todo)
    end
  end
end
