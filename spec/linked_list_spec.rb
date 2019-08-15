# frozen_string_literal: true

require 'data_struct/linked_list'

RSpec.describe 'LinkedList' do
  describe 'Singly' do
    subject('linked_list') { LinkedList::Singly.new }
    describe '#unshift' do
      it 'unshifting value infront of the linked list' do
        linked_list.unshift 2
        linked_list.unshift 6
        expect(linked_list.to_a).to eq([6, 2])
      end
    end
    describe '#push' do
      it 'pushing value back of the linked list' do
        linked_list.push 2
        linked_list.push 6
        expect(linked_list.to_a).to eq([2, 6])
      end
    end

    describe '#pop' do
      it 'poping value from linked list' do
        linked_list.push 2
        linked_list.push 6
        linked_list.push 8
        linked_list.push 6
        linked_list.pop
        expect(linked_list.to_a).to eq([2, 6, 8])
      end
    end
    describe '#to_s' do
      it 'linked list to string' do
        linked_list.push 2
        linked_list.push 6
        linked_list.push 8
        linked_list.push 6
        expect(linked_list.to_s).to eq('2 6 8 ')
      end
    end
    describe '#to_a' do
      it 'linked list to array' do
        linked_list.push 2
        linked_list.push 6
        linked_list.push 8
        linked_list.push 6
        expect(linked_list.to_a).to eq([2, 6, 8, 6])
      end
    end

    describe ':length' do
      it 'linked list length' do
        linked_list.push 2
        linked_list.push 6
        linked_list.push 8
        linked_list.push 6
        expect(linked_list.length).to eq(4)
      end
    end
    describe '#each' do
      it 'each value in linked list' do
        linked_list.push 2
        linked_list.push 6
        linked_list.push 8
        linked_list.push 6
        expect(linked_list.each { |x| x }).to eq([2, 6, 8, 6])
      end
    end
    describe '#index_of' do
      it 'linked list index of 8' do
        linked_list.push 2
        linked_list.push 6
        linked_list.push 8
        linked_list.push 6
        expect(linked_list.index_of(8)).to eq(8)
      end
    end
    describe '#index' do
      it 'linked list value at index' do
        linked_list.push 2
        linked_list.push 6
        linked_list.push 8
        linked_list.push 6
        expect(linked_list.index(1)).to eq(6)
      end
    end
  end

  describe 'Doubly' do
    subject('linked_list') { LinkedList::Doubly.new }
    describe '#unshift' do
      it 'unshifting value infront of the linked list' do
        linked_list.unshift 6
        linked_list.unshift 2
        linked_list.unshift 6
        expect(linked_list.to_a).to eq([6, 2, 6])
      end
    end
    describe '#push' do
      it 'pushing value back of the linked list' do
        linked_list.push 2
        linked_list.push 6
        expect(linked_list.to_a).to eq([2, 6])
      end
    end

    describe '#pop' do
      it 'poping value from linked list' do
        linked_list.push 2
        linked_list.push 6
        linked_list.push 8
        linked_list.push 6
        linked_list.pop
        expect(linked_list.to_a).to eq([2, 6, 8])
      end
    end
    describe '#to_s' do
      it 'linked list to string' do
        linked_list.push 2
        linked_list.push 6
        linked_list.push 8
        linked_list.push 6
        expect(linked_list.to_s).to eq('2 6 8 ')
      end
    end
    describe '#to_a' do
      it 'linked list to array' do
        linked_list.push 2
        linked_list.push 6
        linked_list.push 8
        linked_list.push 6
        expect(linked_list.to_a).to eq([2, 6, 8, 6])
      end
    end

    describe ':length' do
      it 'linked list length' do
        linked_list.push 2
        linked_list.push 6
        linked_list.push 8
        linked_list.push 6
        expect(linked_list.length).to eq(4)
      end
    end
    describe '#each' do
      it 'each value in linked list' do
        linked_list.push 2
        linked_list.push 6
        linked_list.push 8
        linked_list.push 6
        expect(linked_list.each { |x| x }).to eq([2, 6, 8, 6])
      end
    end
    describe '#index_of' do
      it 'linked list index of 8' do
        linked_list.push 2
        linked_list.push 6
        linked_list.push 8
        linked_list.push 6
        expect(linked_list.index_of(8)).to eq(8)
      end
    end
    describe '#index' do
      it 'linked list value at index' do
        linked_list.push 2
        linked_list.push 6
        linked_list.push 8
        linked_list.push 6
        expect(linked_list.index(1)).to eq(6)
      end
    end
  end
end
