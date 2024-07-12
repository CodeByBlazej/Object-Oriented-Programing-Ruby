class GoodDog

  attr_accessor :name, :height, :weight


  def initialize(n, h, w)
    self.name = n
    self.height = h
    self.weight = w 
  end


  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h 
    self.weight = w 
  end

  def info 
    "#{name} weighs #{weight} and is #{height} tall."
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end

  def what_is_self
    self
  end

  puts self
end

GoodDog.what_am_i

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
puts sparky.info 
p sparky.what_is_self

sparky.change_info("Spartacus", "24 inches", "45 lbs")
puts sparky.info

