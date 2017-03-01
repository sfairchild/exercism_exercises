require 'prime'

class PrimeFactors
  def self.for number
    Prime.each(number).each_with_object([]) do |prime, list|
      until number % prime != 0
        list << prime
        number /= prime
      end
      return list if number < 2
    end
  end
end
