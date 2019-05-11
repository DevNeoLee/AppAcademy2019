require_relative "card"

class Board
    attr_reader :size

    def initialize(n = 4)
        @grid = Array.new(n) {Array.new(n)}
        @size = size
        populate
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, value)
        row, col = pos
        @grid[row][col] = value
    end

    def populate
        num_pairs = size**2 / 2
        cards = Card.shuffled_pairs(num_pairs)
        grid.each_index do |i|
            grid[i].each_index do |j|
                self[[i, j]] = cards.pop 
            end
        end        
    end

    def render
        system('clear')
        puts " #{(0...size).to_a.join(" ")}"
        grid.each_with_index do |row, i|
            puts "#{i} : #{row.join(" ")}"
        end
    end

    def won?
        grid.all? do |row|
            row.all?(&:revealed?)
        end
    end

    def revealed?(pos)
        self[pos].revealed?
    end

    private

    attr_reader :grid
end