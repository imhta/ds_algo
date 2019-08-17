# frozen_string_literal: true

require 'data_struct/queue'

RSpec.describe 'Queue' do
  subject('queue') { Queue.new }

  describe '#initialize' do
    it 'queue length should zero' do
      expect(queue.length).to eq(0)
    end
  end

  describe '#in' do
    it 'enqueue a value' do
      queue.in 5
      queue.in 4
      expect(queue.front).to eq(5)
      expect(queue.length).to eq(2)
    end
  end

  describe '#out' do
    it 'dequeue a value from the queue' do
      queue.in 4
      queue.in 3
      expect(queue.out).to eq(4)
      expect(queue.length).to eq(1)
    end
  end

  describe '#front' do
    it 'return the front value of the queue' do
      queue.in 5
      queue.in 6
      queue.out
      queue.in 7
      expect(queue.front).to eq(6)
    end
  end
  describe '#last' do
    it 'return the last value of the queue' do
      queue.in 5
      queue.in 6
      queue.out
      queue.in 7
      expect(queue.last).to eq(7)
    end
  end
  describe '#empty?' do
    it 'checking whether queue is empty with elements inside' do
      queue.in 7
      queue.in 8
      expect(queue.empty?).to be_falsey
    end
    it 'checking whether queue is empty without elements' do
      expect(queue.empty?).to be_truthy
    end
  end

  describe '#to_a' do
    it 'converting a queue into a array' do
      queue.in 5
      queue.in 6
      queue.out
      queue.in 7
      expect(queue.to_a).to eq([6, 7])
    end
  end
end
