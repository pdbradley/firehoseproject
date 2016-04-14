class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def to_s
    if next_node.nil?
      "#{value} --> nil\n"
    else
      "#{value} --> #{next_node.to_s}"
    end
  end
end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end

def reverse_list(list)
    stack = Stack.new

    while list
      stack.push(list.value)
      list = list.next_node
    end

    if popped = stack.pop
      head = LinkedListNode.new(popped)
      current_node = head

      while popped = stack.pop do
        current_node.next_node = LinkedListNode.new(popped)
        current_node = current_node.next_node
      end
    else
      head = nil
    end
    head
end
