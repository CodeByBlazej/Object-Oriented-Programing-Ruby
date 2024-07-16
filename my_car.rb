module Towable
  def can_tow?(pounds)
    pounds < 2000
  end
end

class Vehicle
  @@number_of_cars = 0

  def initialize
    @@number_of_cars += 1
  end

  def self.total_number_of_cars
   puts @@number_of_cars
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
end


class MyCar < Vehicle
  
  OIL = '5w30'

  attr_accessor :color, :model, :speed, :oil
  attr_reader :year
  
  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m 
    @speed = 0
    @@number_of_cars += 1
  end
  
  def spray_paint(color)
    self.color = color 
  end
  
  def car_info
    "It is #{model} produced in #{year} and it's color is #{color} and it takes #{OIL} oil"
  end
  
  def to_s
    "This car is #{model}, it's from #{year}, it's color is #{color} and its mpg is #{@@mpg}"
  end
end

class My_truck < Vehicle
  include Towable

  attr_accessor :brand, :capacity, :seats

  def initialize(b, c, s)
    @brand = b
    @capacity = c 
    @seats = s   
    @@number_of_cars += 1
  end

  def to_s
    "This is #{brand} truck that has #{capacity} of capacity and can carry #{seats} people"
  end
end

Vehicle.total_number_of_cars
bmw = MyCar.new("2010", "red", "e90")
Vehicle.total_number_of_cars
alfa = MyCar.new("2002", "green", "156")
Vehicle.total_number_of_cars

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

white_van = My_truck.new("Iveco", "1200kg", "3")
white_van.start
Vehicle.total_number_of_cars

puts white_van
puts white_van.can_tow?(1000)
