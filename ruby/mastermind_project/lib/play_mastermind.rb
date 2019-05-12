# No need to change or write any code in this file.
#
# After you complete all specs, you can simulate your game by
# running this file with `ruby lib/play_mastermind.rb` in your terminal!

require_relative "mastermind"

puts "Enter a size for the game: " # 첫줄, "게임의 사이즈를 넣어주세요"
mastermind = Mastermind.new(gets.chomp.to_i) # 그 사이즈를 받아서, 마스터마인드 클라스를 만들어준다.

until (mastermind.ask_user_for_guess) do # 사용자가 정보를 줄때까지
  puts "-------------------------"
end

puts "You win!"

