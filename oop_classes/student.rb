class Student
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def name
    "#{first_name} #{last_name}"
  end
end

student1 = Student.new("John", "Doe")
p student1.name
p student1.first_name = "Promise"
p student1.name
