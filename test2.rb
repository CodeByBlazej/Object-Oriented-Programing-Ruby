class WaterBottle
  def initialize(size)
    @size = size
  end

  def what_size?()
    return("this bottle is #{@size}ml")
  end
end


bottle = WaterBottle.new(100)
puts bottle.what_size?()
