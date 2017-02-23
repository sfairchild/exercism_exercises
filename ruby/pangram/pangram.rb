class Pangram
  def self.pangram? string
    string.downcase!
    ('a'..'z').all? { |char| string.include? char }
  end
end

module BookKeeping
  VERSION = 4
end
