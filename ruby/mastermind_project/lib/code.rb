require "byebug"

class Code
  POSSIBLE_PEGS = { # 해쉬 데이터 
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(arr_chars) # 클래스 메쏘드  들어오는 데이터가 해쉬데이터 안에 있는지
    arr_chars.all? {|char| Code::POSSIBLE_PEGS.has_key?(char.upcase)}
  end

  def self.random(size) # 클래스 메쏘드, 랜덤 페그로 새로운 게임 셋을 만들어 줌

    array = Array.new(size) {Code::POSSIBLE_PEGS.keys.sample}
    Code.new(array)
  end

  def self.from_string(string) # 클래스 메또드, 직접 스트링을 넣어주면 게임 셋을 만들어 줌
    Code.new(string.split(""))
  end

  attr_reader :pegs # 페그 정보는 퍼블릭으로 합니다.

  def initialize(arr_chars) 
    unless Code.valid_pegs?(arr_chars) # 이니셜 라이즈 하기전 밸러더티를 찾아보게하고 
      raise "error"
    else
      @pegs = arr_chars.map!(&:upcase)
    end
  end

  def [](index) # 포지션 정보를 보여줍니다.
    @pegs[index]
  end

  def length # 페그의 길이는 유용하겠죠.
    @pegs.length
  end

  def num_exact_matches(code_instance) # 몃개 맞추었는지 보여줍니다.
    count = 0
    @pegs.each_with_index do |char, idx|
      count += 1 if  char == code_instance[idx]
    end
    count
  end

  def num_near_matches(code_instance) #정답외에, 몇개 주변에 비슷한게 있는지 힌트로 보여 줍니다.
    count = 0
    @pegs.each_with_index do |char, idx|
      count += 1 if char != code_instance[idx] && @pegs.include?(code_instance[idx])
    end
    count
  end

  def ==(other_code) # 같은 페그를 가지고 있는지 불리언으로 보여줍니다. 
    self.pegs == other_code.pegs
  end
end

# newOBJ = Code.from_string("ryyb")
# newOBJ.num_near_matches("rryb")