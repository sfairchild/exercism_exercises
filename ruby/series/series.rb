class Series
  attr_reader :digits

  def initialize digits
    @digits = digits
  end

  def slices size
    raise ArgumentError.new("Can not return grouping larger than #{digits.length}") if size > digits.length
    (0..digits.length - size).map { |start| digits[start, size]}
  end
end
