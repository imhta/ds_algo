# frozen_string_literal: true

# This is a implementation of Queue using an array
class Queue
  attr_reader :length
  def initialize
    @queue = []
    @length = 0
  end

  def in(val)
    in_length
    @queue.push val
  end

  def out
    de_length
    @queue.shift
  end

  def front
    @queue.first
  end

  def last
    @queue.last
  end

  def empty?
    @queue.empty?
  end

  def to_a
    @queue
  end

  private

  def in_length
    @length += 1
  end

  def de_length
    @length -= 1
  end
end
