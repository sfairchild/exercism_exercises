require_relative 'numeric'

class Year
  def self.leap? year
    year.divisable_by_4? and year.not_divisable_by_100? or year.divisable_by_400?
  end
end

module BookKeeping
  VERSION = 2
end
