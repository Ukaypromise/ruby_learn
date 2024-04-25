class Person
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

person1 = Person.new("John", "Doe")
puts person1.first_name
puts person1.last_name
puts person1.full_name
