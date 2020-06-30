# frozen_string_literal: true

# Represents the full list
class LinkedList
  attr_accessor :head

  def initialize
    @head = Node.new
    @pointer = 0
  end

  def append(value) # IN PROGRESS
    if head.value.nil?
      head.value = value
    else
      current = head
      cursor = current.next_node
      if cursor.nil?
        new_node = Node.new(value, nil)
        cursor = new_node.value
      end
    end
  end

  def prepend(value)
    new_head = Node.new(value, head.value)
    self.head = new_head
  end

  def size #TODO
  end

  def at(index) end #TODO

  def pop #TODO
  end

  def contains?(value) end #TODO

  def find(value) end #TODO

  def to_s #TODO
  end

  def insert_at(value, index) end # Extra credit

  def remove_at(index) end # Extra credit

end
