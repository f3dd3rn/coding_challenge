require 'spec_helper'
require 'bigdecimal'

describe Mean do
  before :each do
    @mean = Mean.new
  end

  describe '#mean' do
    it 'calculates the arithmetic average' do
      input = [4,56,7,23,6,4,2,33,12]
      push_multiple(input)
      expect(@mean.mean).to eql(arithmetic_average(input))
    end

    context 'when 10 million elements in stack' do
      it 'calculates the arithmetic average' do
        input = []
        9999999.times do
          random_integer = rand(0..1000000)
          input << random_integer
          @mean.push(random_integer)
        end
        expect(@mean.mean).to eql(arithmetic_average(input))
      end
    end
  end

  def push_multiple(ary)
    ary.each do |i|
      @mean.push(i)
    end
  end

  def arithmetic_average(array)
    array.sum / BigDecimal.new(array.size)
  end
end
