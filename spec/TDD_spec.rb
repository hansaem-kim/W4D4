# TDD_spec.rb
require 'TDD'
require 'rspec'

describe Array do
    describe '#remove_dups' do 
        let(:arr) {[1, 2, 1, 3, 3]}
        it 'remove duplicate elements' do 
            expect(arr.remove_dups).to eq([1, 2, 3])
        end
    end

    describe '#two_sum' do 
        let(:arr) {[-1, 0, 2, -2, 1]}
        it 'returns a pair of indices whose sum is equal to 0' do 
            expect(arr.two_sum).to eq([[0, 4], [2, 3]])
        end
        it 'returns in order' do 
            expect(arr.two_sum).to_not eq([[2, 3], [0, 4]])
        end
    end

    describe "#my_transpose" do
        let(:arr) {[[0, 1, 2],
                    [3, 4, 5],
                    [6, 7, 8]]}
        it "returns an array in which row and colum are switched" do
            expect(arr.my_transpose).to eq([
                                            [0, 3, 6],
                                            [1, 4, 7],
                                            [2, 5, 8]])
        end
    end

    describe "#stock_picker" do
        let(:arr) {[3,2,1,5,4,7]}
        it "return the pair of most profitable days" do
            expect(arr.stock_picker).to eq([2,5])
        end
        it "make sure to not sell the stock before buying it!" do
            expect(arr.stock_picker[0] <=> arr.stock_picker[1]).to eq(-1)
        end
    end
end





