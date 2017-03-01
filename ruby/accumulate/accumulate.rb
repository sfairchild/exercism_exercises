class Array
  def accumulate
    return enum_for :accumulate unless block_given?
    each_with_object([]) { |item, result| result << (Proc.new === item) }
  end
end

module BookKeeping
  VERSION = 2
end
