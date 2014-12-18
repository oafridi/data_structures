class Node
  attr_accessor :data, :_next

  def initialize(data)
    @data = data
    self._next = nil
  end
end

class LinkedList  

  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def insert_begin(node)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next = @head
      @head = node
    end
  end

  def insert_end(node)
    if @head == nil
      @head = node
      @tail = node
    else
      @tail._next = node
      @tail = node
    end
  end
end

# Tests

def assert(actual, expected)
  if actual == expected
    return true 
  else
    puts "Error: #{actual} is not equal to #{expected}"
  end
end

# Before test
first = Node.new(5)
second = Node.new(15)
list = LinkedList.new
list.insert_end(first)
list.insert_end(second)

# asserts
assert(list.head.data, 5)
assert(list.head._next, list.tail)
assert(list.tail.data, 15)
assert(list.tail._next, nil)

assert(list.tail._next, 15)