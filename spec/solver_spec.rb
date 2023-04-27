require 'rspec'
require_relative '../solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  it 'get factorial of number 5' do
    result = @solver.factorial(5)
    expect(result).to eq(120)
  end

  it 'get factorial of number 0' do
    result = @solver.factorial(0)
    expect(result).to eq(1)
  end

  it 'raise an exception for negative number' do
    expect { @solver.factorial(-1) }.to raise_error(RuntimeError, 'Argument cannot be negative')
  end

  it 'reverse the string hello' do
    result = @solver.reverse('hello')
    expect(result).to eq('olleh')
  end

  it 'raise an exception if sent integer argument' do
    result = @solver.reverse(1)
    expect(result).to eq('Argument cannot be an integer')
  end

  it 'if n%3 = 0 return fizz' do
    result = @solver.fizzbuzz(3)
    expect(result).to eq('fizz')
  end

  it 'if n%5 = 0 return buzz' do
    result = @solver.fizzbuzz(5)
    expect(result).to eq('buzz')
  end

  it 'if n%5 = 0 & n%3 = 0 return fizzbuzz' do
    result = @solver.fizzbuzz(15)
    expect(result).to eq('fizzbuzz')
  end

  it 'if n%5 != 0 & n%3 != 0 return fizzbuzz' do
    result = @solver.fizzbuzz(14)
    expect(result).to eq(14)
  end
end
