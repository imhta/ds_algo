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
  # This is implementation Binary search tree using Tree::BinaryNode
  class BST
    attr_reader :length
    def initialize
      @root = nil
      @length, @height = 0
      @state_arr = []
    end

    def insert val
      in_length
      @root = recur_insert @root, val
    end
    def min(node = @root)
      cur = node
      unless node.left.nil?
        cur = cur.left
      end
      cur
    end
    def max(node = @root)
      cur = node
      unless node.right.nil?
        cur = cur.right
      end
      cur
    end
    def delete(key, node = @root)
      return @root = node if node.nil?

      if key < node.data 
        node.left = delete(key, node.left)
      elsif key > node.data 
        node.right = delete(key, node.right)
      else
        if node.left.nil?
          temp = node.right
          node = nil
          return temp
        elsif node.right.nil?
          temp = node.left
          node = nil
          return temp
        end

        temp = min(node.right)
        node.data = temp.data
        node.right = delete(temp.data, node.right)
      end
      @root = node
    end
    def find val
      recur_search @root, val
    end
    def to_a
      recur_pre_order @root, []
    end
    def empty? 
      @length.zero?
    end
    def height?
      recur_max_depth @root
    end

    private
    def recur_insert node, val
      return BinaryNode.new(val) if node.nil? 
      if val < node.data
        node.left = recur_insert(node.left, val)
      elsif val > node.data
        node.right = recur_insert(node.right, val)
      end
      node
    end

    def recur_search node, val
      if node.nil? || node.data == val
        return node
      end
      if node.data < val
        return recur_search(node.right, val)
      end
      recur_search(node.left, val)

    end

    def recur_pre_order node, state
      return if node.nil?
      state << node.data
      recur_pre_order(node.left, state) 
      recur_pre_order(node.right, state)
      state
    end
    def recur_max_depth node
      return 0 if node.nil?
      left_depth = recur_max_depth(node.left)
      right_depth = recur_max_depth(node.right)

      if left_depth > right_depth
        return left_depth + 1
      else
        return right_depth + 1
      end
    end
    def in_length
      @length += 1
    end
  
    def de_length
      @length -= 1
    end
  end
end
