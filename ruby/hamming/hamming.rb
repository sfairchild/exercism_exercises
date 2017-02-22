module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute first, second
    raise ArgumentError unless first.length == second.length
    first_strand, second_strand = Strand.new(first), Strand.new(second)
    first_strand.-(second_strand).length
  end
end

class Strand
  attr_accessor :sequence

  def initialize sequence
    @sequence = sequence.split ''
  end

  def - other_strand2
    sequence.zip(other_strand2.sequence).reject{|pair| pair.first == pair.last}
  end
end
