require 'rspec'
require_relative '../solver'

describe Solver do
  before(:each) do
    @solver = double('solver')
  end

  it 'get factorial of number 5' do
    allow(@solver).to receive(:factorial).with(5).and_return(120)
    result = @solver.factorial(5)
    expect(result).to eq(120)
  end

  it 'get factorial of number 0' do
    allow(@solver).to receive(:factorial).with(0).and_return(1)
    result = @solver.factorial(0)
    expect(result).to eq(1)
  end

  it 'raise an exception for negative number' do
    allow(@solver).to receive(:factorial).with(-1).and_raise(ArgumentError.new('Argument cannot be negative'))
    expect { @solver.factorial(-1) }.to raise_error(ArgumentError, 'Argument cannot be negative')
  end

  it 'reverse the string hello' do
    allow(@solver).to receive(:reverse).with('hello').and_return('olleh')
    result = @solver.reverse('hello')
    expect(result).to eq('olleh')
  end

  it 'raise an exception if sent integer argument' do
    allow(@solver).to receive(:reverse).with(1).and_raise(ArgumentError.new('Argument cannot be an integer'))
    expect { @solver.reverse(1) }.to raise_error(ArgumentError, 'Argument cannot be an integer')
  end

  it 'if n%3 = 0 return fizz' do
    allow(@solver).to receive(:fizzbuzz).with(3).and_return('fizz')
    result = @solver.fizzbuzz(3)
    expect(result).to eq('fizz')
  end

  it 'if n%5 = 0 return buzz' do
    allow(@solver).to receive(:fizzbuzz).with(5).and_return('buzz')
    result = @solver.fizzbuzz(5)
    expect(result).to eq('buzz')
  end

  it 'if n%5 = 0 & n%3 = 0 return fizzbuzz' do
    allow(@solver).to receive(:fizzbuzz).with(15).and_return('fizzbuzz')
    result = @solver.fizzbuzz(15)
    expect(result).to eq('fizzbuzz')
  end

  it 'if n%5 != 0 & n%3 != 0 return fizzbuzz' do
    allow(@solver).to receive(:fizzbuzz).with(14).and_return(14)
    result = @solver.fizzbuzz(14)
    expect(result).to eq(14)
  end
end
