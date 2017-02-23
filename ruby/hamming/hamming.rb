module BookKeeping
  VERSION = 3
end

module Hamming
  def self.compute strand_one, strand_two
    raise ArgumentError.new('stands are not equal length') unless strand_one.length == strand_two.length

    first_strand, second_strand = Strand.new(strand_one), Strand.new(strand_two)
    (first_strand - second_strand).length
  end

  class Strand
    attr_accessor :sequence

    def initialize sequence
      @sequence = sequence.chars
    end

    def - other_strand
      sequence.zip(other_strand.sequence).reject { |n1, n2| n1 == n2 }
    end
  end
end
