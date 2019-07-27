# frozen_string_literal: true

# This is a implementation of stack using array
class Stack
  attr_reader :length
  def initialize
    @stack = []
    @length = 0
  end

  def push(val)
    in_length
    @stack.push val
  end

  def pop
    de_length
    @stack.pop
  end

  def top
    @stack[-1]
  end

  def empty?
    @stack.empty?
  end

  def to_a
    @stack
  end

  private

  def in_length
    @length += 1
  end

  def de_length
    @length -= 1
  end
end
