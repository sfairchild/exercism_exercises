class PhoneNumber
  attr_reader :number
  def initialize number
    @number = sanitize number
  end

  def area_code
    number[0..2]
  end

  def to_s
    number.gsub(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')
  end

  private
  def sanitize number
    number = number.gsub(/[\(\)\s\-\.]/, '')
    number =~ /^1{0,1}\d{10}$/ ? number[-10..-1] : '0000000000'
  end
end
