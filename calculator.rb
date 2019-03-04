
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

  def cube(number)
    return number * number * number
  end

  def reverse_string(number)
    return number.to_s.reverse
  end

  # def factorial
  #   product = 1

  #   number.times do
  #     product *= number
  #     number -= 1
  #   end
  #   return product
  # end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
  end

  describe '#multiply' do
    it 'should return the product of 2 numbers' do
      calculator = Calculator.new
      product = calculator.multiply(12, 10)
      expect(product).to eq(120)
    end
  end

  describe '#divide' do
    it 'should return the quotient of 2 numbers' do
      calculator = Calculator.new
      result = calculator.divide(12, 4)
      expect(result).to eq(3)
    end
  end

  describe '#square' do
    it 'should return the square value of the input number' do
      calculator = Calculator.new
      square_value = calculator.square(5)
      expect(square_value).to eq(25)
    end
  end

  describe '#power' do
    it 'should return the value mulitplied by itself based on the exponent' do
      calculator = Calculator.new
      value = calculator.power(5, 3)
      expect(value).to eq(125)
    end
  end

  describe '#cube' do
    it 'should return the value mulitplied by itself 3 times' do
      calculator = Calculator.new
      cubed_value = calculator.cube(10)
      expect(cubed_value).to eq(1000)
    end
  end

  describe '#reverse_string' do
    it 'should return the string in reverse' do
      calculator = Calculator.new
      expect(calculator.reverse_string(8008)).to eq('8008')
    end
  end
end