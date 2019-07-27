# frozen_string_literal: true

# Tree moudle consists of different implementation of tree in different nodes
module Tree
  # This node primarily for binary tree and binary search tree
  class BinaryNode
    attr_accessor :data, :left, :right
    def initialize(data, left = nil, right = nil)
      @data = data
      @left = left
      @right = right
    end
  end
  # This node is general purpose multi child node
  class NormalNode
    attr_accessor :data, :left, :right
    def initialize(data, left = [], right = [])
      @data = data
      @left = left
      @right = right
    end
  end
end
