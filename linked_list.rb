# frozen_string_literal: true

# Represents the full list
class LinkedList
  attr_accessor :head

  def initialize
    @head = Node.new
    @pointer = 0
  end

  def append(value)
    if head.value.nil?
      head.value = value
    end
  end

  def prepend(value)

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
