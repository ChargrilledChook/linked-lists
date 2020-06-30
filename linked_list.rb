# frozen_string_literal: true

# Represents the full list
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value) # IN PROGRESS
    new_node = Node.new(value)
    if head.nil?
      self.head = new_node
    else
      current = head
      until current.next_node.nil?
        current = current.next_node
      end
      current.next_node = new_node
    end
  end

  def prepend(value)
    new_head = Node.new(value, head)
    self.head = new_head
  end

  def size #TODO
    counter = 0
    current = head
    until current.next_node.nil?
      counter +=1 # add nil head edge case
      current = current.next_node
    end
    return counter + 1
  end

  def tail #TODO
    current = head
    current = current.next_node until current.next_node.nil?
    current
  end

  def at(index) end #TODO - 0 index head

  def pop #TODO
  end

  def contains?(value) end #TODO

  def find(value) end #TODO

  def to_s #TODO
    current = head
    until current.next_node.nil?
      print "(#{current.value}) -> "
      current = current.next_node
    end
    print "(#{current.value}) -> nil \n"
  end

  def insert_at(value, index) end # Extra credit

  def remove_at(index) end # Extra credit

end
