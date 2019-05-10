require_relative "player"
require 'set'


class Game
    attr_reader :fragment, :players

    def initialize(player1, player2)
        @fragment = ""
        @players = [player1, player2] 
    end

    def dictionary(data = nil)
        @dictionary = data ||=  File.readlines("dictionary.txt").join("\n").split
        @dictionary.to_set
        
    end

    def valid_play?(str)
        alphabet = ("a".."z").to_a

        return false unless alphabet.include?(str)
        true
    end

    def play_round
        puts "+++++++++++++++++++++++++++++"
        puts "Welcome to the game of Ghost"
        puts "+++++++++++++++++++++++++++++"
        puts
     
    end

    def current_player
        @players.first
    end

    def previous_player
        @players.last
    end

    def next_player!
        @players.last
    end

    def take_turn(player)
        "please enter a letter"
        guess = gets.chomp
    end
    
end

obj = Game.new("adam", "peter")

p obj.dictionary

p obj.dictionary.class


      

