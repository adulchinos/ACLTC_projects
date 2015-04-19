require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

# Tests below:

RSpec.describe Calculator do
  describe 'add' do
    it 'should return the sum of two numbers' do
      calc = Calculator.new
      expect(calc.add(1, 3)).to eq(4)
    end
  end

  describe 'square' do
    it 'should return the square of a given number' do
      calc = Calculator.new
      expect(calc.square(3)).to eq(9)
    end
  end

  describe 'subtract' do
    it 'should return the result of the first number subtracted from the second' do
      calc = Calculator.new
      expect(calc.subtract(5, 2)).to eq(3)
  end
end


  describe 'multiply' do
    it 'should return the result of multiplying the two numbers' do
    calc = Calculator.new
    expect(calc.multiply(1, 5)).to eq(5)
  end  
end
  
  describe 'divide' do
    it 'should return the result of dividing two numbers' do
    calc = Calculator.new
    expect(calc.divide(10,2)).to eq(5)
    end
  end

  # describe 'power' do
  #   it '' do
  #   calc = Calculator.new

  # end

end