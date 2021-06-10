

class HumanPlayer
    attr_reader  :mark_value
    def initialize(mark_value)
        @mark_value=mark_value
    end

    def get_position
        # puts "Player X, enter two numbers representing a position in the format `row col`"
        str = gets.chomp.to_i
        # new_str = str.split(" ")
        # return "Invalid input" if new_str.size>2
        # new_str.each do |ele|
        #     if ele.match(/[a-zA-Z]/)
        #         return "Invalid input"
        #     end
        # end
        # => returnin ==> [new_str[0].to_i , new_str[1].to_i]
            case str
                when 1
                    [0,0]
                when 2
                    [0,1]
                when 3
                    [0,2]
                when 4
                    [1,0]
                when 5
                    [1,1]
                when 6
                    [1,2]
                when 7
                    [2,0]
                when 8
                    [2,1]
                when 9
                    [2,2]
            else
                puts 'invalid number, Please select a number between 1-9'
                get_position
            end
    end
end
