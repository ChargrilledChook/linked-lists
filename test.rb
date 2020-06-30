# frozen_string_literal: true

require_relative 'linked_list'
require_relative 'node'

list = LinkedList.new

list.append({'key': 'value', 'key2': 80085})
list.append('B')
list.append('C')
list.append('D')

list.to_s
puts list.at(0)
puts list.at(1)
puts list.at(2)
puts list.at(3).value

puts list.contains?('A')
puts list.contains?('C')
puts list.contains?('Z')

puts list.find('B')
puts list.find('Z')
puts list.find('Z').nil?

list.insert_at('inserted', 2)
list.insert_at('inserted again!', 3)

list.to_s
