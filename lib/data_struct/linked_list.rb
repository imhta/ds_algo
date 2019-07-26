# lib/data_struct/linked_list.rb
class DataStruct::SNode
    attr_accessor :data :next
    def initialize(data, next = nil)
        @data = data
        @next = next
    end
end

class DataStruct::DNode
    attr_accessor :data :next
    def initialize(data, next = nil)
        @data = data
        @next = next
    end
end

class DataStruct::SLinkedList
    attr_accessor :head
    def initialize
        @head = nil
    end
end