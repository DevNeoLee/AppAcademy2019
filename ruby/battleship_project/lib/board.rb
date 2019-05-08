class Board

    def self.print_grid

    end

  attr_reader :size

  def initialize(n)
    @grid = Array.new(n) { Array.new(n, :N)}
    @size = n * n
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
    count = 0
    (0..@grid.length - 1).each do |i|
        (0..@grid.length - 1).each do |j|
           if @grid[i][j] == :S
            count += 1
           end
        end
    end
    count
  end

  def attack(position)
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
        # @grid[row][column] = :S
    end
  end

  def hidden_ships_grid
    @grid.map do |row|
        row.map do |ele|
            if ele == :S 
                :N 
            else
                ele
            end
        end
    end
  end

  def cheat

  end

  def print 
    Board.print_grid(hidden_ships_gird)
  end

  

end