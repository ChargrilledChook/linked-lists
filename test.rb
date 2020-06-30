require_relative 'linked_list'
require_relative 'node'

list = LinkedList.new

list.append('A')
list.append('B')
list.append('C')
list.append('D')

list.to_s
puts list.at(0)
puts list.at(1)
puts list.at(2)
puts list.at(3).value

list.pop
list.pop

list.to_s
