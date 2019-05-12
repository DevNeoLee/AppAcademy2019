class Player
  attr_reader :name # 사용자의 이름은 유용하게 쓰일수 있겠지요.

  def initialize(name) 
    @name = name
  end

  def alert_invalid_move(letter) # 이 캐릭터는 밸리드 하지 않음을 알려줌.
    puts "#{letter} is not a valid move!"
    puts "Your guess must be a letter of the alphabet."
    puts "You must be able to form a word starting with the new fragment.\n"
  end

  def guess(fragment) # 추측해봐요 그리고 그 추측을 내보내 준다.
    prompt(fragment)
    gets.chomp.downcase
  end

  def inspect # 현제의 사용자를 보여준다?
    "HumanPlayer: #{name}"
  end

  def to_s # ??이게 왜 필요한거지?
    name
  end

  private

  def prompt(fragment) # 현제의 프레그먼트 을 보여줌
    puts "The current fragment is '#{fragment}'."
    print "Add a letter: " # "캐릭터를 추가해 주세요:"
  end
end
