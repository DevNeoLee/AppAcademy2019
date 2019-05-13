require "colorize"

class Tile
    attr_reader :value

    def initialize(value)
        @value = value
        @given = value == 0 ? false : true
    end

    def color 
        given? ? :blue : :red 
    end

    def given?
        @given
    end

    def to_s 
        value == 0 ? " " : value.to_s.colorize(color) 
    end

    def value=(new_value)
        if given?
            puts "You can't change the value of a given tile."
        else
            @value = new_value
        end
    end
end

class Board
    def Board.empty_grid
        Array.new(9) do
            Array.new(9) { Tile.new(0)}
        end
    end

    def Board.from_file(filename)
        rows = File.readlines(filename).map(&:chomp)
        tiles = rows.map do |row|
            nums = row.split("").map {|car| Integer(char)}
            nums.map {|num| Tile.new(num)}
        end

        Board.new(tiles)
    end

    def initialize(grid = Board.empty_grid)
        @grid = grid
    end

    def [](pos)
        row, col = pos
        grid[row][col]
    end

    def []=(pos, value)
        row, col = pos
        tile = grid[row][col]
        tile.value = value
    end

    def columns
        rows.transpose
    end

    def render
        puts " #{(0..8).to_a.join(' ')}"
        grid.each_with_index do |row, i|
            puts "#{i} #{row.join(' ')}"
        end
    end

    def rows
        grid
    end

    def size
        grid.size
    end

    def solved?
        rows.all? {|row| solved_set?(row)} &&
        columns.all? {|col| solved_set?(col)} &&
        squares.all? {|square| solved_set?(square)}
    end

    def solved_set?(tiles)
        nums = tiles.map(&:value)
        nums.sort == (1..9).to_a
    end

    def square(idx)
        tiles = []
    end

    def squares

    end

    def dup

    end

    private

    attr_reader :grid
end