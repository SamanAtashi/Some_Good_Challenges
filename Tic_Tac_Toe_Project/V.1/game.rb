require_relative "board.rb"
require_relative "human_player.rb"

class Game
    def initialize(player_1, player_2)
        @player_1=player_1
        @player_2=player_2
        @curr_player=player_1
    end

    def switch_turn
        if @curr_player==@player_1
            @curr_player=@player_2
        elsif @curr_player==@player_2
            @curr_player=@player_1
        end
    end

    def play
        while Board.empty?
            @grid.prints
        end
    end
end

p game= Game.new(:X, :O)

p game.play