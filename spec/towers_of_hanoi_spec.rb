describe HanoiTower do
    subject(:game) { HanoiTower.new(3)}
    describe "#initialize" do
        it "should accept @size" do 
            expect(game.size).to eq(3)
        end
        it "should set towers to be a 2D array with 3 sub arrays" do
            expect(game.towers).to eq([[3,2,1], [], []])
        end
    end

end
