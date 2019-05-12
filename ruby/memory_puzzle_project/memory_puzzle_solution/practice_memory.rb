class Card
    VALUES = ("A".."Z").to_a

    def self.shuffled_pairs(num_pairs)
        values = VALUES

        while num_pairs > values.length
            values = values + values
        end

        values = values.shuffle.take(num_pairs) * 2
        values.shuffle!
        values.map {|val| }
    end



end

class Board
    attr_reader :size

    def initialize(size = 4)
        @grid = Array.new(size) { Array.new(size)}
        @size = size
        populate
    end

    def populate
        num_pairs = size**2 / 2
        cards = Card.shuffled_pairs(num_pairs)
        rows.each_index do |i|
            rows[i].each_index do |j|

    end

end