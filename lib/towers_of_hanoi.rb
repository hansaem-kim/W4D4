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
        if @towers[end_pos].empty? || @towers[start_pos].last > @towers[end_pos].last
            return true
        end
        false
    end

    def win?
        arr = []
        (1..size).each do |i|
            arr[0].unshift(i)
        end
        if @towers[2] == arr
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
    #play
        #gets from player
    #display
    #move piece
end