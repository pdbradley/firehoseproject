class Stack
    attr_reader :data

    def initialize
      @data = nil
    end

    # Push an item onto the stack
    def push(element)
      element_node = LinkedListNode.new(element)
      element_node.next_node = @data if @data
      @data = element_node
    end

    # Pop an item off the stack.  
    # Remove the last item that was pushed onto the
    # stack and return it to the user
    def pop
      if @data
        popped = @data.value
        @data = @data.next_node
        popped
      else
        nil
      end
    end


    # convenience print method
    def to_s
      @data.to_s
    end

end
