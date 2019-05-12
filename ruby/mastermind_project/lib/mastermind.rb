require_relative "code"

class Mastermind
    def initialize(length) # 최기화때 비밀 코드라고 코드셋을 하나 만들어 줍니다. 특정 길이로.
        @secret_code = Code.random(length)
    end

    def print_matches(code_instance) # 화면에 프린트 해주는 기능, 모든 결과물들을. 
        p "number of exact matches : #{@secret_code.num_exact_matches(code_instance)}"
        p "number of near matches: #{@secret_code.num_near_matches(code_instance)}"
    end

    def ask_user_for_guess # 사용자에게 정보를 구하는 곳
        p "Enter a code"
        guessed_code = Code.from_string(gets.chomp)
        print_matches(guessed_code)
        @secret_code == guessed_code
    end
end
