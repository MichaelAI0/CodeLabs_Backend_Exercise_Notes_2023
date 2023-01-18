class Calculator
  def add(input_1, input_2)
    input_1 + input_2
  end
  def subtract(input_1, input_2)
    input_1 - input_2
  end
  def divide(input_1, input_2)
    input_1 / input_2
  end
  def multiply(input_1, input_2)
    input_1 * input_2
  end
end

calc = Calculator.new
puts calc.add(1, 5)
puts calc.subtract(5, 1)
puts calc.divide(5, 1)
puts calc.multiply(5, 1)