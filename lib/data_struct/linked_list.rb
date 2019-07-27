# frozen_string_literal: true

# lib/data_struct/linked_list.rb
class SNode
  attr_accessor :data, :next_val
  def initialize(data, next_val = nil)
    @data = data
    @next_val = next_val
  end
end

class DNode
  attr_accessor :data, :next_val, :pre_val
  def initialize(data, next_val = nil, pre_val = nil)
    @data = data
    @next_val = next_val
    @pre_val = pre_val
  end
end

class LinkedList
  attr_accessor :head, :length
  def initialize
    @head = nil
    @length = 0
  end

  def shift(val)
    in_length
    @head = SNode.new val, @head
  end

  def push(val)
    in_length
    return @head = SNode.new(val) if @head.nil?

    node = @head
    (@length - 2).times do
      node = node.next_val
    end
    node.next_val = SNode.new val
  end

  def pop
    node = @head
    if @length.zero?
      raise 'Error: List is empty'
    else
      de_length
      (@length - 1).times do
        node = node.next_val
      end
      node.next_val = nil
    end

    @head
  end

  def to_s
    node = @head
    str = ''
    (@length - 1).times do
      str += "#{node.data} "
      node = node.next_val
    end
    str
  end

  def to_a
    node = @head
    arr = []
    @length.times do
      arr << node.data
      node = node.next_val
    end
    arr
  end

  def each
    node = @head
    arr = []
    @length.times do
      arr << yield(node.data)
      node = node.next_val
    end
    arr
  end

  def index(index_val)
    raise 'index value higher than current length of list' if @length - 1 < index_val

    node = @head
    index_val.times do
      node = node.next_val
    end
    node.data
  end

  def index_of(val)
    node = @head
    @length.times do
      return node.data if node.data == val

      node = node.next_val
    end
    raise 'value not found'
  end
  
  private

  def in_length
    @length += 1
  end

  def de_length
    @length -= 1
  end
end
