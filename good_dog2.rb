class GoodDog2
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog2.total_number_of_dogs

dog1 = GoodDog2.new
dog2 = GoodDog2.new

puts GoodDog2.total_number_of_dogs