class GoodDog3

  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    @name = n
    @age = a 
  end

  private

  def human_years
    age * DOG_YEARS
  end

end

sparky = GoodDog3.new('Sparky', 4)

sparky.human_years