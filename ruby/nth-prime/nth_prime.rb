class Prime
  @@primes = [2]

  def self.nth num
    raise ArgumentError.new('Can not get a prime less than 1') if num <= 0

    until @@primes.size >= num
      next_prime = @@primes[-1] + 1
      next_prime += 1 until is_prime? next_prime
      @@primes << next_prime
    end

    @@primes[num - 1]
  end

  def self.is_prime? number
    @@primes.include?(number) || !@@primes.any? { |prime|
      next if prime == 1
      (number % prime).zero?
    }
  end
  private_class_method :is_prime?
end

module BookKeeping
  VERSION = 1
end
