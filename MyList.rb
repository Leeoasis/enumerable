require_relative './MyEnumerable'

class MyList
  def initialize(*arr)
    @list = arr
  end

  include MyEnum

  def each(&block)
    @list.each { |x| block.call(x) }
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 })

puts(list.all? { |e| e > 5 })

puts(list.any? { |e| e == 2 })

puts(list.any? { |e| e == 5 })

puts(list.filter(&:even?))