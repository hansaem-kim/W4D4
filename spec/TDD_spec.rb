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
end

