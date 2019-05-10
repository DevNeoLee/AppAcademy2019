class Board

    def self.print_grid(grid)
      grid.each {|row| puts row.join(" ")} # 투디멘션 그리드 각 x 좌표들 한줄에 프린트 하기
    end

  attr_reader :size

  def initialize(n)
    @grid = Array.new(n) { Array.new(n, :N)} # 투디멘션 그리드, 를 만들기
    @size = n * n
  end

  def [](position) # 투디멘션 위치, 쉽게 지칭하기
    row, column = position
    @grid[row][column]
  end


  def []=(position, val) # 튜디멘션 위치에 값, 넣어주기
    row, column = position
    @grid[row][column] = val
  end

  def num_ships

    #최상 방식
    @grid.flatten.count {|ele| ele == :S}
    # 방식1.
    # count = 0
    # (0..@grid.length - 1).each do |i| # 튜디멘션 그리드 전체판, 한번씩 체크하기
    #     (0..@grid.length - 1).each do |j|
    #        if @grid[i][j] == :S
    #         count += 1
    #        end
    #     end
    # end
    # count


    # 방식2.
    # count = 0
    # @grid.each do |row|
    #   row.each do |ele|
    #     if ele == :S 
    #       count += 1
    #     end
    #   end
    # end
    # count
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

    while num_ships < max_ships # while을 사용하여, 특정 숫자 까지 넣어주기
        row = rand(0..@grid.length - 1)
        column = rand(0..@grid.length - 1)
        @grid[row][column] = :S
        # @grid[row][column] = :S
    end
  end

  def hidden_ships_grid # 투디멘션 안의 각각의 값의 전체를 만져줄때...
    @grid.map {|row| row.map {|ele| ele == :S ? :N : ele} }
  end

 
  def cheat
    Board.print_grid(@grid)
  end

  def print 
    Board.print_grid(hidden_ships_grid)
  end

end