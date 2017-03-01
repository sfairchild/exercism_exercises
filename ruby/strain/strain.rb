module Enumerable
  def keep
    each_with_object(self.class.new) { |item, list| yield(item) && list << item }
  end

  def discard
    keep { |item| !yield(item) }
  end
end
