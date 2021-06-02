class HumanPlayer
    attr_reader :mark
    def initialize(mark)
        @mark=mark
    end

    def get_position
        puts "Player X, enter two numbers representing a position in the format `row col`"
        str = gets.chomp
        new_str = str.split(" ")
        return "Invalid input" if new_str.size>2
        new_str.each do |ele|
            if ele.match(/[a-zA-Z]/)
                return "Invalid input"
            end
        end
        [new_str[0].to_i , new_str[1].to_i]
    end
end

player_1 = HumanPlayer.new(:X)

p player_1.get_position