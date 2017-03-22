require 'spec_helper'

describe Max do
  describe '#push' do
    context 'invalid data' do
      context 'when pushing a negative integer' do
        it 'raises ArgumentError' do
          expect{ Max.new.push(-1) }.to raise_error(ArgumentError, 'Must be unsigned integer!')
        end
      end
      context 'when pushing a float' do
        it 'raises ArgumentError' do
          expect{ Max.new.push(0.9) }.to raise_error(ArgumentError, 'Must be unsigned integer!')
        end
      end
    end
  end

  describe '#pop' do
    context 'when stack is empty' do
      it 'returns nil if stack is empty' do
        expect(Max.new.pop).to be_nil
      end
    end

    context 'when stack is not empty' do
      it 'returns the last element and removes it from the stack' do
        input = [3,4,5]
        max = Max.new
        input.each do |i|
          max.push(i)
        end
        input.reverse.each do |i|
          expect(max.pop).to equal(i)
        end
      end
    end
  end
end
