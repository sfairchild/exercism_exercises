class Squares
  def initialize num
    @nums = 1..num
  end

  def difference
    square_of_sum - sum_of_squares
  end

  def square_of_sum
    @square_of_sum ||= @nums.inject(0, &:+) ** 2
  end

  def sum_of_squares
    @sum_of_squares ||= @nums.inject(0) { |sum, num| sum + num ** 2 }
  end
end

module BookKeeping
  VERSION = 3
end
