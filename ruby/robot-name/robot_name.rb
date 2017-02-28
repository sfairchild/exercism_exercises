class Robot
  LETTERS = *'A'..'Z'
  NUMBERS = *'0'..'9'
  SEGMENT = -> (size, list) do
    size.times.each_with_object('') { |_, string| string << list.sample }
  end

  @@names = []

  def name
    @name ||= get_unique_name
  end

  def reset
    @name = nil
  end

  def taken_names
    @@names
  end

  def get_unique_name
    begin
      name = generate_serial_number
    end while @@names.include? name
    @@names << name && name
  end

  def generate_serial_number
    get_letters(2) + get_numbers(3)
  end

  %w{letters numbers}.each do |type|
    define_method "get_#{type}" do |num=1|
      SEGMENT.call num, self.class.const_get(type.upcase)
    end
  end
end

module BookKeeping
  VERSION = 2
end
