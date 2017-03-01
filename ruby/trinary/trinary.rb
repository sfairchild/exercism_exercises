class Trinary
  def initialize trinary
    @trinary = trinary
  end

  def to_decimal
    return 0 if @trinary.match(/[^012]/)
    @trinary.reverse
            .each_char
            .with_index
            .reduce(0) { |sum, (value, place)| sum + value.to_i * 3**place}
  end
end


module BookKeeping
  VERSION = 1
end
