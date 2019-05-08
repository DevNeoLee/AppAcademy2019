require_relative "code"

class Mastermind
    def initialize(length)
        @secret_code = Code.random(length)
    end

    def print_matches(code_instance)
        p "number of exact matches : #{@secret_code.num_exact_matches(code_instance)}"
        p "number of near matches: #{@secret_code.num_near_matches(code_instance)}"
    end

    def ask_user_for_guess
        p "Enter a code"
        guessed_code = Code.from_string(gets.chomp)
        print_matches(guessed_code)
        @secret_code == guessed_code
    end
end
