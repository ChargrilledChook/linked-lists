# frozen_string_literal: true

# Represents the full list
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)
    if head.nil?
      self.head = new_node
    else
      current = head
      current = current.next_node until current.next_node.nil?
      current.next_node = new_node
    end
  end

  def prepend(value)
    self.head = Node.new(value, head)
  end

  def size
    return 0 if head.nil?

    counter = 0
    current = head
    until current.next_node.nil?
      counter += 1
      current = current.next_node
    end
    counter + 1 # check edge cases ie nil head
  end

  def tail
    current = head
    current = current.next_node until current.next_node.nil?
    current
  end

  # Zero indexed. Raises IndexError if out of bounds
  def at(index)
    current_index = 0
    current_node = head
    until index == current_index || current_node.nil?
      current_node = current_node.next_node
      current_index += 1
    end
    raise IndexError if current_node.nil?

    current_node
  end

  def pop
    current = head
    current = current.next_node until current.next_node.next_node.nil?
    current.next_node = nil
  end

  def contains?(value)
    current = head
    until current == tail
      return true if current.value == value

      current = current.next_node
    end
    false
  end

  # Zero indexed, returns nil if not found
  def find(value)
    return unless contains?(value)

    current_index = 0
    current_node = head
    until value == current_node.value
      current_node = current_node.next_node
      current_index += 1
    end
    current_index
  end

  def to_s
    current = head
    result = ''
    until current.next_node.nil?
      result += "(#{current.value}) -> "
      current = current.next_node
    end
    result += "(#{current.value}) -> nil \n"
    result
  end

  def insert_at(value, index)
    if index.zero?
      prepend(value)
    else
      new_node = Node.new(value, at(index))
      at(index - 1).next_node = new_node
    end
  end

  def remove_at(index)
    at(index - 1).next_node = at(index + 1)
  end
end
