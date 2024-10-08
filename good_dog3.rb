class GoodDog3

  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    @name = n
    @age = a 
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end
  
  private

  def human_years
    age * DOG_YEARS
  end

end

sparky = GoodDog3.new('Sparky', 4)

puts sparky.public_disclosure