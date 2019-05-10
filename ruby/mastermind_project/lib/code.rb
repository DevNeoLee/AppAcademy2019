require "byebug"

class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(arr_chars)
    arr_chars.all? {|char| Code::POSSIBLE_PEGS.has_key?(char.upcase)}
  end

  def self.random(size)
    raise "error, size must be integer" unless size.instance_of?(Integer)

    array = Array.new(size) {Code::POSSIBLE_PEGS.keys.sample}
    Code.new(array)
  end

  def self.from_string(string)
    Code.new(string.split(""))
  end

  attr_reader :pegs

  def initialize(arr_chars)
    unless Code.valid_pegs?(arr_chars)
      raise "error"
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
      count += 1 if  char == code_instance[idx]
    end
    count
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

# newOBJ = Code.from_string("ryyb")
# newOBJ.num_near_matches("rryb")