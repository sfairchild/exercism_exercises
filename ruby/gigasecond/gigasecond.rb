require 'date'
module BookKeeping
  VERSION = 5
end

class Gigasecond
  def self.from time
    time + 1000000000
  end
end
