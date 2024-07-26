class Celsius
  def initialize(temperature)
    @temperature = temperature
  end

  def to_fahrenheit()
    @temperature * 1.8 + 32
  end
end

celsius = Celsius.new(10)

puts celsius.to_fahrenheit