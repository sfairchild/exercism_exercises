class Numeric
  def method_missing name
    if match = name.match(/^(?<not>not_)?divisable_by_(?<number>\d+)\?$/)
      (self % match[:number].to_i).zero? ^ match[:not]
    else
      super
    end
  end
end
