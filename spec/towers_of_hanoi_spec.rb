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

    describe "#valid_move?" do
        it "should accept start_pos and end_pos as arguments" do
            expect {game.valid_move?(0,1)}.to_not raise_error
        end
        
        it "return true if the tower at end_pos is empty" do
            game.towers[0] = [3,2]
            game.towers[1] = [1]
            game.towers[2] = []
            expect(game.valid_move?(0,2)).to eq(true)
        end
    end

    describe "#win?" do
        it "return true if the third tower is correctly filled" do
            game.towers[2] = [3,2,1]
            game.towers[0] = []
            expect(game.win?).to eq(true)
        end
    end

    describe "#move_piece" do
        it "should accept start_pos and end_pos as arguments" do
            expect {game.move_piece(0,1)}.to_not raise_error
        end
        it "should move pieces" do 
            game.towers[0] = [3,2]
            game.towers[1] = [1]
            game.towers[2] = []
            game.move_piece(0,2)
            expect(game.towers[0]).to eq([3])
            expect(game.towers[1]).to eq([1])
            expect(game.towers[2]).to eq([2])
        end
        it "should raise an error if move is not valid" do
            game.towers[0] = [3,2]
            game.towers[1] = [1]
            game.towers[2] = []
            expect {game.move_piece(0,1)}.to raise_error
        end
    end

    describe "#display" do
        it "should display towers" do
        end
    end

    describe "#turn" do
        it "should get starting position from a player" do
            input = double("0\n", :chomp=>"0")
            allow(game.turn).to receive(:gets).and_return(input)

            expect(input).to receive(:chomp)
            expect(game.turn).to receive(:gets)
        end

    end



end
