require 'towers_of_hanoi'
require 'rspec'

describe HanoiTower do
    subject(:game) { HanoiTower.new(3)}
    describe "#initialize" do
        it "should accept @size" do 
            expect(game.size).to eq(3)
        end
        it "should set towers to be a 2D array with 3 sub arrays" do
            expect(game.towers.length).to eq(3)
        end
    end

    describe '#populate' do 
        it 'populate the tower' do
            expect(game.populate).to eq([[3, 2, 1], [], []])
        end
    end

end
