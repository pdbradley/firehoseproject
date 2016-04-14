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

def reverse_list_via_mutation(list, previous=nil)
  if list.nil?
    previous
  else
    old_next = list.next_node
    list.next_node = previous
    reverse_list_via_mutation(old_next, list)
  end
end
