# frozen_string_literal: true

require_relative 'linked_list'
require_relative 'node'

list = LinkedList.new

puts list.head.nil?

list.append('A')

pp list

list.prepend('B')

pp list

list.prepend('C')

pp list

list.to_s

puts list.size

list.prepend('O___o')

list.to_s

puts list.size

list.append(80085)

list.to_s

puts list.tail.value
