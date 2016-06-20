# Node of a Linked List
class Node
  attr_accessor :value, :next
  def initialize(value)
    @value = value
  end
end

# SingleLinkedList
class SingleLinkedList
  attr_accessor :head
  def initialize(value)
    @head = value
  end

  def append(value)
    node = head
    loop do
      break unless node.next
      node = node.next
    end
    node.next = value
  end

  def to_a
    a = []
    node = head
    loop do
      a << node.value
      node = node.next
      break unless node
    end
    a
  end

  def each
    node = head
    loop do
      yield node
      node = node.next
      break unless node
    end
  end
end

ll = SingleLinkedList.new Node.new(1)
ll.append Node.new(2)
ll.append Node.new(3)
ll.append Node.new(4)
ll.append Node.new('adsa')

puts ll.to_a.inspect

