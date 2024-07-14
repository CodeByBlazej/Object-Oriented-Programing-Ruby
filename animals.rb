module Swimmable
  def swim
    "I'm swimming!"
  end
end

module Climable
  def climb
    "I'm climbing!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable
end

class Mammal < Animal
end

class Cat < Animal
end

class Dog < Mammal
  include Swimmable
end

class GoodDog < Animal
  include Swimmable
  include Climable
end

sparky = Dog.new
nemo = Fish.new
paws = Cat.new

sparky.swim
nemo.swim
# paws.swim

puts GoodDog.ancestors