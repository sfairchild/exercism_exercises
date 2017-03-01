class SumOfMultiples
  def initialize *multiples
    @enum = -> (final) do
      (1...final).reduce(0) do |sum, number|
        multiples.any? { |n| number % n == 0 } ? sum + number : sum
      end
    end
  end

  def to finish
    @enum.call finish
  end
end
