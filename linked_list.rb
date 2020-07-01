# frozen_string_literal: true

# Represents the full list
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    if head.nil?
      self.head = Node.new(value)
    else
      current = head
      current = current.next_node until current.next_node.nil?
      current.next_node = Node.new(value)
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
    counter + 1
  end

  def tail
    return if head.nil?

    current = head
    current = current.next_node until current.next_node.nil?
    current
  end

  # Zero indexed. Returns nil if index out of bounds
  def at(index)
    current_index = 0
    current_node = head
    until index == current_index || current_node.nil?
      current_node = current_node.next_node
      current_index += 1
    end
    return if current_node.nil?

    current_node
  end

  # First two clauses cover edge cases of list length 1 and 0 respectively
  def pop
    if size == 1
      self.head = nil
      return
    end
    return if head.nil?

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
    return if head.nil?

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
    check_index(index)
    if index.zero?
      prepend(value)
    else
      at(index - 1).next_node = Node.new(value, at(index))
    end
  end

  # First clause covers removing head of list
  def remove_at(index)
    check_index(index)
    if index.zero?
      self.head = head.next_node
      return
    end
    at(index - 1).next_node = at(index + 1)
  end

  # Helper function for remove_at and insert_at - raise error for indexes that are negative or out of bounds
  def check_index(index)
    raise IndexError if index.negative? || index > size
  end
end
