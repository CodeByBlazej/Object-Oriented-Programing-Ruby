class Viking
  def initialize(name, health, age, strength)
    #...set variables
  end

  def self.create_warrior(name)
    age = rand * 20 + 15
    health = [age * 5, 120].min
    strength = [age / 2, 10].min 
    Viking.new(name, health, age, strength)
  end

  def take_damage(damage)
    @health -= damage
    die if @health <= 0
  end

  private

  def die
    puts "#{self.name} has been killed :("
  end
end   

oleg = Viking.create_warrior("Oleg")
sten = Viking.create_warrior("Sten")
oleg.take_damage(200)