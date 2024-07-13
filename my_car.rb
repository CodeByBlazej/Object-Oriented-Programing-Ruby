class MyCar

  attr_accessor :color, :model, :speed
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m 
    @speed = 0
  end

  def spray_paint(color)
    self.color = color 
  end

  def car_info
    "It is #{model} produced in #{year} and it's color is #{color}"
  end

  def start
    puts "Engine starting..."
  end

  def stop
    @speed = 0
    puts "Engine stops..."
  end

  def accelerate(number)
    @speed += number
    puts "You push the gas and accelerate #{number} mph"
  end

  def break(number)
    @speed -= number
    puts "You press the break and decelerate #{number} mph"
  end

  def current_speed
    puts "Your current speed is #{speed}"
  end

  def self.miles_per_galon(gallons, miles)
    @@mpg = miles / gallons 
    puts "Your MPG is #{@@mpg}"
  end

  def to_s
    "This car is #{model}, it's from #{year}, it's color is #{color} and its mpg is #{@@mpg}"
  end

end

bmw = MyCar.new("2010", "red", "e90")
alfa = MyCar.new("2002", "green", "156")
puts bmw.car_info
bmw.spray_paint("blue")
puts bmw.car_info
puts bmw.color
puts bmw.year
bmw.start
bmw.stop
bmw.start
bmw.accelerate(10)
bmw.current_speed
bmw.accelerate(20)
bmw.current_speed
bmw.break(5)
bmw.current_speed
bmw.stop
bmw.current_speed
MyCar.miles_per_galon(16, 900)

puts bmw
puts alfa
