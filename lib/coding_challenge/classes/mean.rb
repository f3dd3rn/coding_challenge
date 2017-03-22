require 'bigdecimal'

class Mean < Max
  def mean
    @stack.sum / BigDecimal.new(@stack.size)
  end
end
