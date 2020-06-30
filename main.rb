require_relative 'linked_list'
require_relative 'node'

list = LinkedList.new

list.append('A')

puts list.head.value

list.prepend('B')

puts list.head.value
