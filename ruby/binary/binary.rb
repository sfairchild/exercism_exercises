class Binary
  def self.to_decimal binary
    raise ArgumentError.new('Invalid binary format') unless binary =~ /^[01]+$/

    binary.reverse.each_char.with_index.reduce(0) do |result, (bit, position)|
      result + bit.to_i * 2**position
    end
  end
end

module BookKeeping
  VERSION = 3
end
