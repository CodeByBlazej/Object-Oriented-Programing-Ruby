class MyCar

  attr_accessor :year, :color, :model


  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m 
  end

  def start
    puts "Engine starting..."
    @speed = s
  end

  def stop
    puts "Engine stops..."
  end

  def accelerate
    "#{speed + 10}"
  end


end

bmw = MyCar.new("2010", "red", "e90")
bmw.start
bmw.stop