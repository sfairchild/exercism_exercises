class BeerSong

  REGULAR_VERSE = -> (total) do
    <<~VERSE
      #{sentence_case(plural_bottle total)}, #{plural_bottle total, true}.
      #{action_to_take total}, #{plural_bottle total - 1 }.
    VERSE
  end

  def verse number
    raise ArgumentError.new('I don\'t know that verse') unless number.between?(0, 99)
    REGULAR_VERSE[number]
  end

  def verses start, finish
    start.downto(finish).map { |number| verse number }.join "\n"
  end

  def lyrics
    verses 99, 0
  end

  def self.plural_bottle total, strip_location=false
    case total
      when 1 then '1 bottle'
      when 0 then 'no more bottles'
      else        "#{total < 0 ? '99' : total} bottles"
    end +         " of beer#{' on the wall' unless strip_location}"
  end
  private_class_method :plural_bottle

  def self.action_to_take total
    case total
      when 1 then 'Take it down and pass it around'
      when 0 then 'Go to the store and buy some more'
      else        'Take one down and pass it around'
    end
  end
  private_class_method :action_to_take

  def self.sentence_case phrase
    phrase[0].upcase + phrase[1..-1]
  end
  private_class_method :sentence_case
end


module BookKeeping
  VERSION = 2
end
