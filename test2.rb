class Mammal
  def heartbeat?
    true
  end
end

class Dog < Mammal
end

d = Dog.new()
puts d.heartbeat?