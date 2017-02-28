class Pangram
  ABC_S = ('A'..'Z')

  # wordage
  # noun  word·age \ˈwər-dij\
  # Definition of wordage
  # 1
  #   a :  words
  #   b :  verbiage
  # 2 :  the number or quantity of words
  # 3 :  wording
  def self.pangram? wordage
    wordage = wordage.upcase
    ABC_S.all? { |char| wordage.include? char }
  end
end

module BookKeeping
  VERSION = 4
end
