require 'data_struct/tree'

RSpec.describe 'Tree' do
    describe 'BST' do
        subject('bst') {Tree::BST.new}
        describe '#insert' do
            it 'insert value inside a binary search tree' do
                bst.insert 5
                bst.insert 4
                bst.insert 6
                bst.insert 7
                expect(bst.to_a).to eq([5,4,6,7])
            end
        end
        describe '#delete' do
            it 'delete value inside a binary search tree' do
                bst.insert 5
                bst.insert 4
                bst.insert 7
                bst.insert 6
                bst.delete 4
                expect(bst.to_a).to eq([5,7,6])
            end
        end
        describe '#min' do
            it 'min value inside a binary search tree' do
                bst.insert 5
                bst.insert 4
                bst.insert 7
                bst.insert 6
                expect(bst.min.data).to eq(4)
            end
        end
        describe '#max' do
            it 'max value inside a binary search tree' do
                bst.insert 5
                bst.insert 4
                bst.insert 7
                bst.insert 6
                expect(bst.max.data).to eq(7)
            end
        end
        describe '#to_a' do
            it 'convert bst into array' do
                bst.insert 5
                bst.insert 4
                bst.insert 6
                bst.insert 7
                expect(bst.to_a).to eq([5,4,6,7])
            end
        end
        describe '#find' do
            it 'find value from the bst' do
                bst.insert 5
                bst.insert 4
                bst.insert 6
                bst.insert 7
                expect(bst.find 4).to be_a Tree::BinaryNode
            end
            it 'find a value which not found in the bst' do
                bst.insert 5
                bst.insert 4
                bst.insert 6
                bst.insert 7
                expect(bst.find 10).to eq(nil)
            end
        end
        describe '#height?' do
            it 'return the height of bst' do
                bst.insert 5
                bst.insert 4
                bst.insert 6
                bst.insert 7
                expect(bst.height?).to eq(3)
            end
        end
        describe ':length' do
            it 'return the length of bst' do
                bst.insert 5
                bst.insert 4
                bst.insert 6
                bst.insert 7
                expect(bst.length).to eq(4)
            end
        end
    end
end