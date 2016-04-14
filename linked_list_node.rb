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

