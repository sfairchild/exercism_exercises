class Clock
  def initialize hour, min
    @hour = hour
    @min  = min
  end

  def self.at hours, mins
    new hours, mins
  end

  def to_s
    hours = (@hour + @min / 60) % 24
    mins  = @min % 60
    "%02<hour>d:%02<min>d" % {hour: hours, min: mins}
  end

  def + mins
    @min += mins
    self
  end

  def tick
    @min += 1
    self
  end

  def == other
    to_s == other.to_s
  end
end

module BookKeeping
  VERSION = 2
end
