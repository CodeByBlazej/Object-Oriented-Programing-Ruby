class Person

  def initialize(age)
    @age = age
  end
  
  def age=(new_age)
    @age = new_age
  end

  def age()
    return(@age)
  end
end

p = Person.new(24)
puts p.age
puts p.age=(42)
puts p.age