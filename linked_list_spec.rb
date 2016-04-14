require_relative 'linked_list_node'

describe LinkedListNode do
  it "should be printable" do
    node123 = linked_list_1_through_3

    expect(node123.to_s).to eq "1 --> 2 --> 3 --> nil\n"
  end




  # helper methods

  def linked_list_1_through_3
    node1 = LinkedListNode.new(3)
    node2 = LinkedListNode.new(2, node1)
    node3 = LinkedListNode.new(1, node2)
    node3
  end

end
