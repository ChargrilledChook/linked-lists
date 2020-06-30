require_relative 'linked_list'
require_relative 'node'

list = LinkedList.new

puts list.head.nil?

list.prepend('B')

pp list

list.prepend('C')

pp list

list.to_s

puts list.size

list.prepend('O___o')

list.to_s

puts list.size
