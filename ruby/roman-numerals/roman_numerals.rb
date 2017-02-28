# This is only my first pass, I just beat it with a hammer to complete it
# Lots of room for refinement
class Integer
  ROMAN = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  def to_roman
    number = self.dup
    results = ''
    tester = ->(n, numeral) do
      s = ''
      while number >= n do
        s << numeral
        number -= n
      end
      s
    end

    ROMAN.each do |n, numeral|
      results << tester.call(n, numeral)
    end
    results
  end
end

module BookKeeping
  VERSION = 2
end
