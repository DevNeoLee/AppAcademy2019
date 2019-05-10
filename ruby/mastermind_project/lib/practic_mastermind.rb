#pracitice file

class Code
    POSSIBLE_PEGS = {
        "R" => :red,
        "G" => :green,
        "B" => :blue,
        "Y" => :yellow
    }

    def self.valid_pegs?(arr_chars)
        arr_chars.all? (|char| Code::POSSIBLE_PEGS.has_key?(char.upcase))
    end

    def self.random(size)
        array = Array.new(size, Code::POSSIBLE_PEGS.keys.sample)
        Code.new(array)
    end

    def self.from_string(string)
        Code.new(string.split(""))
    end

    attr_reader :pegs 

    def initialize(arr_chars)
        unless Code.valid_pegs?(arr_chars)
            raise "Error"
        else
            @pegs = arr_chars.map!(&:upcase)
        end
    end

    def [](index)
        @pegs[index]
    end

    def length
        @pegs.length
    end

    def num_exact_matches(code_instance)
        count = 0
        @pegs.each_with_index do |char, idx|
            count += 1 if char == code_instance[idx]
        end
        count
        end
    end

    def num_near_matches(code_instance)
        count = 0
        @pegs.each_with_index do |char, idx|
            count += 1 if char != code_instance[idx] && @pegs.include?(code_instance[idx])
        end
        count
    end

    def ==(other_code)
        self.pegs == other_code.pegs 
    end
end

class Mastermind
    def initialize(length)
        @secret_code = Code.random(length)
    end

    def print_matches(code_instance)
        p "number of exact matches: #{@secret_code.num_exact_matches(code_instance)}"
        p "number of near matches: #{@secret_code.num_near_matches(code_instance)}"
    end

    def ask_user_for_guess
        p "Enter a code"
        guessed_code = Code.from_string(gets.chomp)
        print_matches(guessed_code)
        @secret_code == guessed_code
    end
end