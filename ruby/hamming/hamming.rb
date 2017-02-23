module BookKeeping
  VERSION = 3
end

module Hamming
  def self.compute strand1, strand2
    first_strand, second_strand = Strand.new(strand1), Strand.new(strand2)
    raise InvalidLengthError unless first_strand.same_size? second_strand

    (first_strand - second_strand).length
  end

  class Strand
    attr_accessor :sequence

    def initialize sequence
      @sequence = sequence.chars
    end

    def same_size? other_strand
      @sequence.length == other_strand.sequence.length
    end

    def - other_strand
      sequence.zip(other_strand.sequence).reject { |n1, n2| n1 == n2 }
    end
  end

  class InvalidLengthError < ArgumentError
    def message
      'The two stands are not equal length.'
    end
  end
end
