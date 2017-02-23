class Sieve
  def initialize number
    @list = *2..number
  end

  def primes
    @list.each do |prime|
      @list.delete_if { |number| number % prime == 0 && prime != number }
    end
  end
end

module BookKeeping
  VERSION = 1
end
