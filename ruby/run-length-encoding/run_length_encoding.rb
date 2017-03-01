class RunLengthEncoding
  def self.encode data
    data.scan(/((.)\2*)/).reduce('') { |result, (grouping, char)| "#{result}#{count_charecters grouping}#{char}" }
  end

  def self.decode code
    code.scan(/(\d*)(.)/).reduce('') { |result, (grouping, char)| "#{result}#{multiply_charecter char, grouping.to_i}" }
  end

  def self.count_charecters characters
    characters.length > 1 ? characters.length : ''
  end

  def self.multiply_charecter char, multiplier
    multiplier.zero? ? char : char * multiplier
  end
  private_class_method :count_charecters, :multiply_charecter
end

module BookKeeping
  VERSION = 2
end
