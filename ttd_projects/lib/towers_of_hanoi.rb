class Towers

    attr_reader :row1, :row2
    def initialize
        @grid = Array.new(3) {Array.new(5)}
        
    end

    def gamestart
        @grid[0] = [5,4,3,2,1]
        @grid[1] = []
        @grid[2] = []
    end

    def get_input
        p 'Select a pile from 0-2'
        @row1 = gets.chomp.to_i
        raise "non-integer input" if row1 > 2

        p 'Select a pile to put the disc'
        @row2 = gets.chomp.to_i
        raise "non-integer input" if row2 > 2


    end

    def move_disc
        if @grid[@row2].last.nil? || @grid[@row1].last < @grid[@row2].last
            popped_disc = @grid[@row1].pop
            @grid[@row2].push(popped_disc)
        else
            p 'invalid'
        end
    end

    def win?
        if @grid[2] == [5,4,3,2,1]
            p 'you win!'
            return true 
        end
    end

    def print_grid
        @grid.each do |row|
            puts row.join(" ")
        end
    end

    def play
        self.gamestart
        while !win?
            print_grid
            get_input
            move_disc
            p "-----------------------------"
        end
    end

end

t = Towers.new
t.play