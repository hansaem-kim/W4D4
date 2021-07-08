class HanoiTower
    attr_reader :size
    attr_accessor :towers

    def initialize(size)
        @size = size 
        @towers = Array.new(3) {Array.new}
        
    end

    def populate
        (1..size).each do |i|
            @towers[0].unshift(i)
        end
        @towers
    end

    def valid_move?(start_pos, end_pos)
        if @towers[end_pos].empty? || @towers[start_pos].last < @towers[end_pos].last
            return true
        end
            
        false
    end

    def win?
        arr = []
        (1..size).each do |i|
            arr.unshift(i)
        end
        if @towers[2] == arr
            print "You Won!!!"
            return true 
        end
        false
    end

    def reset
        @towers = Array.new(3) {Array.new}
        populate
    end

    def move_piece(start_pos, end_pos)
        if valid_move?(start_pos, end_pos)
            @towers[end_pos] << @towers[start_pos].pop 
        else  
            raise "that's not a valid move!"
        end
    end

    def display
        @towers.each_with_index do |tower, index|
            puts "Tower #{index}: #{tower}"
        end
    end

    def play
        self.populate
        until self.win?
            begin
                self.turn
            rescue 
                puts "try again"
                sleep(1)
                retry
            end    
        end
    end

    def turn
        system("clear")
        self.display

        puts "Enter the tower that you want to move from: "
        start_pos = gets.chomp.to_i

        puts "Enter the tower that you want to move to: "
        end_pos = gets.chomp.to_i

        self.move_piece(start_pos, end_pos)

    end

end

# game = HanoiTower.new(3)
# game.play

