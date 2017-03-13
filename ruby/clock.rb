class Clock
  def self.at hour, min
    new hour, min
  end

  def initialize hour, min
    @hour, @min = get_time hour, min
  end

  def to_s
    '%02<hour>i:%02<min>i' % {hour: @hour, min: @min}
  end

  def + min
    @hour, @min = get_time(@hour, @min + min)
    self
  end

  def == other
    to_s == other.to_s
  end

  private
  def get_time hour, min
    hour = (hour + min / 60) % 24
    min = min % 60
    [hour, min]
  end
end

module BookKeeping
  VERSION = 2
end
