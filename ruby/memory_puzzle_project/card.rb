
class Card
    VALUES = ("A".."Z").to_a

    def self.shuffled_pairs(num_pairs)
        values = VALUES

        while num_pairs > values.length
            values = values + values
        end

        values = values.shuffle.take(num_pairs) * 2
        values.shuffle!
        values.map {|val| self.new(val)}
    end

    attr_reader :value
     
    def initialize(value, face = false)
        @value = value
        @face = face
    end

    def hide
        @face = false
    end

    def reveal
        @face = true
    end

    def to_s
        if @face == true
            return @value
        else
            " "
        end
    end

    def ==(other)
        self.value == other.value
    end
end