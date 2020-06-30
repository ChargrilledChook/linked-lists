require_relative 'linked_list'
require_relative 'node'

list = LinkedList.new

list.append('A')

puts list.head.value

list.append('B')

puts list.head.value
puts list.head.next_node
