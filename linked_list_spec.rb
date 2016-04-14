require_relative 'linked_list_node'
require_relative 'stack'
require 'pry'

describe LinkedListNode do
  it "should be printable" do
    node123 = linked_list_1_through_3

    expect(node123.to_s).to eq "1 --> 2 --> 3 --> nil\n"
  end
end

describe Stack do
  it "should allow for pushing elements onto it" do
    stack = Stack.new

    stack.push(1)
    stack.push(2)
    stack.push(3)

    expect(stack.to_s).to eq "3 --> 2 --> 1 --> nil\n"
  end

  it "should allow for popping pushed elements from it" do
    stack = Stack.new

    stack.push(1)
    stack.push(2)
    stack.push(3)
    popped = stack.pop

    expect(popped).to eq 3
    expect(stack.to_s).to eq "2 --> 1 --> nil\n"
  end
end

describe 'reverse_list' do
  it "should return a reversed list of LinkedListNode objects" do
    list_123 = linked_list_1_through_3

    list_321 = reverse_list(list_123)

    expect(list_321.to_s).to eq "3 --> 2 --> 1 --> nil\n"
  end
end


  # helper methods
  def linked_list_1_through_3
    node1 = LinkedListNode.new(3)
    node2 = LinkedListNode.new(2, node1)
    node3 = LinkedListNode.new(1, node2)
    node3
  end
