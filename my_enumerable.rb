module MyEnum
  def all?
    each do |x|
      return false unless yield x
    end
    true
  end

  def any?
    each do |x|
      return true if yield x
    end
    false
  end

  def filter
    new_list = []
    each do |x|
      new_list << x if yield x
    end
    new_list
  end
end
