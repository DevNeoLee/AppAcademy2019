class Board
    def self.print_grid(grid)
        grid.each {|row| puts row.join(" ")}
    end

    attr_reader :size

    def initialize(n)
        @grid = Array.new(n) {Array.new(n, :N)}
        @size = n**2
    end

    def [](position)
        row, column = position
        @grid[row][column]
    end

    def []=(position, val)
        row, column = position
        @grid[row][column] = val
    end

    def num_ships
        @grid.flatten.count{|ele| ele == :S}
    end

    def attack(postition)
        if self[position] == :S 
            self[position] = :H
            p 'you sunk my battleship!'
            return true
        else
            self[position] = :X
            return false
        end
    end

    def place_random_ships
        max_ships = 0.25 * @size

        while num_ships < max_ships
            row = rand(0..@grid.length - 1)
            column = rand(0..@grid.length - 1)
            @grid[row][column] = :S 
        end
    end

    def hidden_ships_grid
        @grid.map {|row| row.map {|ele| ele == :S ? :N : ele}}
    end

    def cheat
        Board.print_grid(@grid)
    end

    def print 
        Board.print_gird(hidden_ships_grid)
    end
end

class Battleship
    def initialize(n)
        @player = Player.new
        @board = Board.new(n)
        @remaining_misses = n**2 / 2
    end

    def board
        @board
    end

    def player
        @player
    end

    def start_game
        @board.place_random_ships
        p @board.num_ships
        @board.print
    end

    def lose?
        if @remanining_misses <= 0
            p 'you lose'
            return true
        else
            false
        end
    end

    def win?
        if @board.num_ships <= 0
            print 'you win'
            return true
        else
            false
        end
    end

    def game_over?
        if lose? || win?
            return true
        else
            false
        end
    end

    def turn
        unless @board.attack(@player.get_move)
            @remaning_misses -= 1
        end
        @board.print
        p @remaining_misses
    end
end

puts "Enter a size for the game: "
battleship = Battleship.new(gets.chomp.to_i)
battleship.start_game

until battleship.game_over? do
    puts "---------"
    battleship.turn
end