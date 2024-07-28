module MathHelpers
  def exponent(num1, num2)
    num1 ** num2
  end
end

class Calculator
  include MathHelpers

  def squate_root(num1)
    return(exponent(num1, 0.5))
  end
end

n = Calculator.new
puts n.squate_root(2)

