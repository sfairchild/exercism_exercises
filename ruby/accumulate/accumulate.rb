class Array
  def accumulate &func
    self.each_with_object([]) { |item, result| result << (func === item) }
  end
end

module BookKeeping
  VERSION = 1
end
