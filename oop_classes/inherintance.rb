class Animal
  def breathe
    "Can Breath!!"
  end

  def move
  end

  def eat
  end
end

class Bear < Animal
end

bear = Bear.new

puts bear.respond_to?(:breathe)
