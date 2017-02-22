class Raindrops
  SOUNDS = {
    Pling: 3,
    Plang: 5,
    Plong: 7
  }

  def self.convert number
    sounds = SOUNDS.select { |sound, size| number % size == 0 }
    sounds.any? ? sounds.keys * '' : number.to_s
  end
end

module BookKeeping
  VERSION = 3
end
