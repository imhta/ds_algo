# frozen_string_literal: true

class Queue
  attr_reader :length
  def initialize
    @queue = []
    @length = 0
  end

  def in val
    in_length
    @queue.push val
  end
  def out
    de_length
    @queue.shift
  end

  def front
    @queue[0]
  end
  def last
    @queue[-1]
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
