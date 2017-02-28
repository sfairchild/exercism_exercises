class Grains
  GRAINS = -> do
    grains = [1]
    grains << grains.last * 2 until grains.length == 64
    grains
  end.call

  def self.square square
    raise OutOfRange unless square.between? 1, 64
    GRAINS[square - 1]
  end

  def self.total
    @@total ||= GRAINS.sum
  end

  class OutOfRange < ArgumentError
    def message
      'Must specify a square between 1 and 64'
    end
  end
end

module BookKeeping
  VERSION = 1
end
