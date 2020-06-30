require_relative 'linked_list'
require_relative 'node'

list = LinkedList.new

pp list

list.append('A')

pp list

list.prepend('B')

pp list

list.prepend('C')

pp list
