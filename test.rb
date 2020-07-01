# frozen_string_literal: true

require_relative 'linked_list'
require_relative 'node'

list = LinkedList.new

list.prepend("I'm the head")

puts list.size

list.append({ 'key': 'value', 'key2': 80_085 })
list.append('B')
list.append('C')
list.pop
list.append('wag wag')
list.prepend('No, I am')

puts list.size

puts list.head.value
puts list.tail.value

puts list.to_s
puts list.at(0)
puts list.at(1)
puts list.at(2)
puts list.at(3).value

puts list.contains?('A')
puts list.contains?('B')
puts list.contains?('Z')

puts "finding 'B' : " + list.find('B').to_s
puts list.find('Z')
pp list.find('Z')
puts list.find('Z').nil?

list.insert_at('inserted', 2)
list.insert_at('inserted again!', 3)

puts list.to_s

list.remove_at(3)

puts list.to_s

list2 = LinkedList.new

puts list2.size