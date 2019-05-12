require_relative "board"
require_relative "player"

class Battleship
    def initialize(n) # 플레이어 한명과 보드 한판과 남아있는 공격기회 정보를 창조 하기.
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

    def start_game # 보드에 배들을 뛰워주고, 배갯수를 프린트 하고, 보드를 프린트 보여 준다. 
        @board.place_random_ships
        p @board.num_ships
        @board.print
    end

    def lose? # 남아있는 공격 기회 갯수로 게임 짐을 경정하는 메쏘드.
        if @remaining_misses <= 0 
            p 'you lose' 
            return true
        else
            false
        end
    end

    def win? # 남아있는 배의 갯수로 경기를 이김을 결정하는 메쏘드.
        if @board.num_ships <= 0 
         print 'you win' 
         return true
        else
         false
        end
    end

    def game_over? # 게임 짐 이거나 게임 이김이면 게임이 끝남을 의미함.
        if lose? || win?
            return true
        else
            false
        end
    end

    def turn # 한판을(게임이 한번에 진행되는 한판을) 의미
        unless @board.attack(@player.get_move) # 어택이 성공하지 않으면
            @remaining_misses -= 1 # 남아있는 공격기회갯수를 하나 줄임.
        end
        @board.print # 보드를 다시 프린트 해주고
        p @remaining_misses # 남아있는 공격 기회갯수도 프린트 해줌.
    end
end
