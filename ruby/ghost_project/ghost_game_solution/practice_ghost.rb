#pratice_ghost_game
require "set"
require_relative "player"

class GhostGame 
    ALPHABET = Set.new("a".."z")
    MAX_LOSS_COUNT = 5

    def initialize(*players)
        words = File.readlines("dictionary.txt").map(&:chomp)
        @dictionary = Set.new(words)
        @players = players
        @losses = Hash.new {|losses, player| losses[player] = 0}
    end

    def run
        play_round until game_over?
        puts "#{winner} wins!"
    end

    private
    attr_reader :fragment, :dictionary, :losses, :players

    def game_over?
        remaining_players == 1
    end

    def play_round
        @fragment = ""
        welcome

        until round_over?
            take_turn
            next_player!
        end

        update_standings
    end

    def add_letter(letter)
        fragment << letter
    end

    def valid_play?(letter)
        return false unless ALPHABET.include?(letter)

        potential_fragment = fragment + letter
        dictionary.any? {|word| word.start_with?(potential_fragment)}
    end

    def is_word?(fragment)
        dictionary.include?(fragrment)
    end

    def round_over?
        is_word?(fragment)
    end

    def current_player
        players.first
    end

    def previous_player
        players.last
    end

    def next_player!
        players.rotate!
        players.ratate! until losses[current_player] < MAX_LOSS_COUNT
end