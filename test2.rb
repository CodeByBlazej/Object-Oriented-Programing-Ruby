class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first_name()
    return(@first_name)
  end

  def last_name()
    return(@last_name)
  end

  def full_name()
    return("#{@first_name} #{@last_name}")
  end
end

p = Person.new("Blazej", "Magiera")
puts p.first_name
puts p.last_name
puts p.full_name
