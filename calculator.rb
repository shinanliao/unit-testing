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
    return number * exponent
  end
  def average(number_one, number_two, number_three)
    return (number_one + number_two + number_three) / 3
  end
end
# RSpec tests:
RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(1, 2)).to eq(3)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      expect(calculator.add(1, -3)).to eq(-2)
    end
  end
  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(15, 2)).to eq(13)
    end
  end
  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(2, 3)).to eq(6)
    end
  end
  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      expect(calculator.divide(10, 2)).to eq(5)
    end
  end
  describe 'square' do
    it 'should return the product of the number times itself' do
      calculator = Calculator.new
      expect(calculator.square(10)).to eq(100)
    end
  end
  describe 'power' do
    it 'should return the product of the number multiplied by the exponent' do
      calculator = Calculator.new
      expect(calculator.power(3, 3)).to eq(9)
    end
  end
  describe 'average' do
    it 'should return the average of the numbers' do
      calculator = Calculator.new
      expect(calculator.average(5, 1, 3)).to eq(3)
    end
  end
end