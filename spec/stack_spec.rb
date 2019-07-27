require 'data_struct/stack'

RSpec.describe 'Stack' do
    subject('stack') {Stack.new}

    describe '#initialize' do
        it 'stack length should zero' do
            expect(stack.length).to eq(0)
        end
    end

    describe '#push' do
        it 'push value in stack' do
            stack.push 5
            stack.push 4
            expect(stack.top).to eq(4)
            expect(stack.length).to eq(2)
        end
    end

    describe '#pop' do
        it 'pop value from the stack' do
            stack.push 4
            stack.push 3
            expect(stack.pop).to eq(3)
            expect(stack.length).to eq(1)
        end
    end

    describe '#top' do
        it 'return the top value of the stack' do
            stack.push 5
            stack.push 6
            stack.pop
            stack.push 7
            expect(stack.top).to eq(7)
        end
    end

    describe '#is_empty?' do
        it 'checking whether stack is empty with elements inside' do
            stack.push 7
            stack.push 8
            expect(stack.empty?).to be_falsey
        end
        it 'checking whether stack is empty without elements' do
            expect(stack.empty?).to be_truthy
        end
    end

    describe '#to_a' do
        it 'converting a stack into a array' do
            stack.push 5
            stack.push 6
            stack.pop
            stack.push 7
            expect(stack.to_a).to eq([5,7])
        end
    end

end