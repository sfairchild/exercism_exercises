class BaseConverter
  def self.convert input_base, digits, output_base
    raise InvalidBase unless [input_base, output_base].all? { |base| base > 1 }
    return [] if digits.empty?
    base_10_to output_base, base_10(input_base, digits)
  end

  def self.base_10 input_base, digits
    digits.reverse.each_with_index.reduce(0) { |result, (digit, position)|
      raise InvalidDigit if digit < 0 || digit >= input_base
      result + digit * input_base**position
    }
  end
  private_class_method :base_10

  def self.base_10_to(output_base, value)
    (0..[(Math.log(value) / Math.log(output_base)) + 1, 1].max.floor - 1)
    .collect do
      digit = value % output_base
      value = (value - digit) / output_base
      digit
    end.reverse
  end
  private_class_method :base_10_to

  class InvalidDigit < ArgumentError
    def message
      'Input digits must be within the range of the input base'
    end
  end

  class InvalidBase < ArgumentError
    def message
      'Base 2 or greater is required'
    end
  end
end

module BookKeeping
  VERSION = 2
end
