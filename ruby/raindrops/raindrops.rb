class Raindrops
  SOUNDS = {
    Pling: 3,
    Plang: 5,
    Plong: 7
  }

  def self.convert number
    SOUNDS.each_with_object('') { |(sound, size), sounds| sounds << sound.to_s if number % size == 0 }
  end
end

module BookKeeping
  VERSION = 3
end
