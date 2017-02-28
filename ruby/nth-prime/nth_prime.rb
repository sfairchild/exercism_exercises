class Prime
  @primes = [2, 3]

  def self.nth num
    raise ArgumentError.new('Can not get a prime less than 1') if num <= 0

    next_prime = @primes[-1] + 2
    until num < @primes.size
      @primes << next_prime if prime? next_prime
      next_prime += 2
    end

    @primes[num - 1]
  end

  def self.prime? number
    sqrt = Math.sqrt number
    !@primes.any? { |prime|
      return true if prime > sqrt
      (number % prime).zero?
    }
  end
  private_class_method :prime?
end

module BookKeeping
  VERSION = 1
end
