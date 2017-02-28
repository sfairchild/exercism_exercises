class Phrase
  attr_reader :word_count
  def initialize sentance
    sanitized_sentance = sentance.gsub(/[,\:\!\&\@\$\%\^\.]/, ' ')
                                 .gsub(/\'(\w+)\'/, '\1')

    @word_count = sanitized_sentance
                    .downcase
                    .split
                    .each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
  end
end

module BookKeeping
  VERSION = 1
end
