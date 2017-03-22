class Max
  def initialize
    @stack = []
  end

  def push(unsigned_integer)
    raise ArgumentError.new("Must be unsigned integer!") unless unsigned_integer.is_a?(Integer) && unsigned_integer > 0
    @stack << unsigned_integer
  end

  def pop
    @stack.pop
  end
end
