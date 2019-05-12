# No need to change or write any code in this file.
#
# After you complete all specs, you can play your game by
# running this file with `ruby lib/play_battleship.rb` in your terminal!

require_relative "battleship"

puts "Enter a size for the game: " # 첫줄, 게임의 사이즈를 사용자에게 구한다.
battleship = Battleship.new(gets.chomp.to_i) # 배틀쉽 업젝트 하나를 그 정보에 맞추어 만들어 준다. 
battleship.start_game # 게임시작하기 메쏘드를 불러 주기.

until battleship.game_over? do #게임이 끝나는 조건까지
  puts "-------------------------"
  battleship.turn #이게 게임진행의 메인 부분이네요, 이 부분을 반복해 줍니다. 게임이 끝나는 조건까지.
end
