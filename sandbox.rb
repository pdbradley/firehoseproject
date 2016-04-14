require 'pry'
require_relative 'linked_list_node'

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


puts node3

