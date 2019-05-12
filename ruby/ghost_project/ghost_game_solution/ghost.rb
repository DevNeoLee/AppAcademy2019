require "set"
require_relative "player"

class GhostGame 
  ALPHABET = Set.new("a".."z") # 알파벳 세트를 만들어 주어서, 자료밸리드에 쓰이겠지.
  MAX_LOSS_COUNT = 5 # 기회횟수를 정해주고

  def initialize(*players) # 사용자들을 넣어주고
    words = File.readlines("dictionary.txt").map(&:chomp) #파일을 읽어 단어 어레이를 만들어줌.
    @dictionary = Set.new(words) #딕션너리 단어 어레이를 세트로 데이터타이프를 결정
    @players = players #사용자들
    @losses = Hash.new { |losses, player| losses[player] = 0 } # 사용자에 따라, 실패횟수 해쉬자료
  end

  def run # 게임이 끝날때까지 게임을 플레이 해줍니다.
    play_round until game_over?
    puts "#{winner} wins!" # 그중 한명이 이길때 까지.
  end

  private # ??단어조각, 사전, 실패횟수, 사용자들 모두 private로 만들어줄 이유가 있나요??
  attr_reader :fragment, :dictionary, :losses, :players

  def game_over? # 게임이 끝났나 확인, 남은 사용자가 한명이 돼는 순간 게임이 끝남.
    remaining_players == 1
  end

  def play_round # 게임 한판 내용
    @fragment = "" # 단어조각 처음은 무.
    welcome #게임시작을 화면에 보여줌.

    until round_over? #한판이 끝났니?
      take_turn #한판 전체.
      next_player!
    end

    update_standings
  end

  # helper methods 
  def add_letter(letter)
    fragment << letter
  end

  def valid_play?(letter) # 한조각이 일단 알파벳안에 들어 있어야 하고
    return false unless ALPHABET.include?(letter)

    potential_fragment = fragment + letter #일단, 미래의 가능성 있는 단어조각을 variable에 넣어주고
    dictionary.any? { |word| word.start_with?(potential_fragment) } #사전에도 start_with? 해야함
  end

  def is_word?(fragment) # 단어인가요? 단어조각이 단어임을 사전을 통해서 확인해줌.
    dictionary.include?(fragment)
  end

  def round_over? # 만들어진 단어조각이 공식 단어 인가?
    is_word?(fragment)
  end
  
  def current_player
    players.first
  end

  def previous_player
    players.last
  end

  def next_player!
    players.rotate! # 사용자를 로테이트 하기. 사용자 어레이에서 로테이트함.
    # keep rotating until we find a player who hasn't been eliminated
    players.rotate! until losses[current_player] < MAX_LOSS_COUNT
    # 현제 사용자의 실패 갯수가 MAX_LOSS_COUNT 보다 적은 사용자 일때 까지 로테이트 해줌.
  end

  def remaining_players # 남아있는 사용자들
    losses.count { |_, v| v < MAX_LOSS_COUNT } #실패횟수 해쉬자료에서 카운트해줌, 실패횟수가 맥스횟수보다 적은자들, 즉 아직 살아남은 자들의.
  end

  def winner # 이긴 사용자, 승리자 , losses이라는 해쉬자료에서 정보를 긁어냄.
    (player, _) = losses.find { |_, losses| losses < MAX_LOSS_COUNT } # losses해쉬자료에서 
    player
  end

  def record(player) # 사용자의
    count = losses[player] # 실패 해쉬정보 횟수를 이용하여
    "GHOST".slice(0, count) # 5개글씨에서 그 횟수를 잘라냄.
  end

  # UI methods (display game status and prompts to players) 
  def welcome # 게임 시작을 알리고 사용자들의 순위를 보여줌
    system("clear")
    puts "Let's play a round of Ghost!"
    display_standings
  end

  def take_turn # 한판
    system("clear")
    puts "It's #{current_player}'s turn!" #현제 사용자
    letter = nil 

    until letter #한조각이 생길때까지
      letter = current_player.guess(fragment) #한조각은 사용자의 추측이 들어감.
      
      unless valid_play?(letter) # 한조각이 밸리드 하지 않으면..
        current_player.alert_invalid_move(letter) # 경고 메세지를 내보내고
        letter = nil # 한조각이 아직 없음으로 만듬
      end
    end

    add_letter(letter) #한조각을 더해주기
    puts "#{current_player} added the letter '#{letter}' to the fragment."
  end

  def display_standings #사용자들의 순위
    system("clear")
    puts "Current standings:"

    players.each do |player| # 각 선수들 마다 선수들의 기록을 보여줌.
      puts "#{player}: #{record(player)}"
    end

    sleep(2) # 2초간 화면을 멈춤.
  end

  def update_standings #방금전 일어난 상황 화면에 보여줌
    system("clear")
    puts "#{previous_player} spelled #{fragment}." #맞춘 단어조각 보여줌
    puts "#{previous_player} gets a letter!"

    losses[previous_player] += 1 #이전 사용자의 실패 횟수를 하나 올림 

    if losses[previous_player] == MAX_LOSS_COUNT #실패횟수가 맥스랑 같으면
      puts "#{previous_player} has been eliminated!" #게임 끝났음을 알림.
    end

    display_standings # 기록을 화면에 다 보여주고

    sleep(2) # 2초간 멈춘다.
  end
  
end

if __FILE__ == $PROGRAM_NAME
  game = GhostGame.new(Player.new("Gizmo"), Player.new("Breakfast"))
  game.run
end
