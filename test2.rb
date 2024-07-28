module MathHelper
  def multiply_by_two(number)
    number * 2
  end
end

class Homework
  include MathHelper
end

to_do = Homework.new()
puts to_do.multiply_by_two(2)