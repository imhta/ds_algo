# frozen_string_literal: true

# lib/data_struct/linked_list.rb

# This module consists of all nodes and implementation of linked list
module LinkedList
  # This node for Singly Linked list implementation.
  class SinglyNode
    attr_accessor :data, :next_val
    def initialize(data, next_val = nil)
      @data = data
      @next_val = next_val
    end
  end
  # This node for Doubly Linked list implementation.
  class DoublyNode
    attr_accessor :data, :next_val, :pre_val
    def initialize(data, pre_val = nil, next_val = nil)
      @data = data
      @next_val = next_val
      @pre_val = pre_val
    end
  end
  # This is a singly linked list implementation.
  class Singly
    attr_reader :head, :length
    def initialize
      @head = nil
      @length = 0
    end

    def shift(val)
      in_length
      @head = SinglyNode.new val, @head
    end

    def push(val)
      in_length
      return @head = SinglyNode.new(val) if @head.nil?

      node = @head
      (@length - 2).times do
        node = node.next_val
      end
      node.next_val = SinglyNode.new val
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
  # This is a Doubly linked list implementation.
  class Doubly
    attr_reader :head, :length
    def initialize
      @head = nil
      @length = 0
    end

    def shift(val)
      in_length
      return @head = DoublyNode.new(val) if @head.nil?

      new_head = DoublyNode.new val, nil, @head
      @head.pre_val = new_head
      @head = new_head
    end

    def push(val)
      in_length
      return @head = DoublyNode.new(val) if @head.nil?

      node = @head
      (@length - 2).times do
        node = node.next_val
      end
      node.next_val = DoublyNode.new val
      node.next_val.pre_val = node
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
end
