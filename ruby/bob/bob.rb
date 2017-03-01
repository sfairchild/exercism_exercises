class Bob
  @question = -> phrase { phrase =~ /\?\Z/ }
  @yell = -> phrase { phrase.upcase == phrase && phrase.downcase != phrase }
  @silence = -> phrase { phrase.strip.empty? }

  def self.hey verbalism
    case verbalism
    when @yell
      'Whoa, chill out!'
    when @question
      'Sure.'
    when @silence
      'Fine. Be that way!'
    else 'Whatever.'
    end
  end
end
