class Board
    def initialize
        @grid=[["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"]]
        # @grid=[["X", "X", "X"], ["X", "X", "X"], ["X", "X", "X"]]
    end

    def valid?(pos)
        pos.each do |ele|          
            if (0..2).include?(ele)==false
                return false
            end
        end
        return true
    end
    #! Dependent -------------------------------------
    def empty?(pos)
      ["1","2","3","4","5","6","7","8","9"].include?(@grid[pos[0]][pos[1]])
    end

    def place_mark(position, mark)
        if valid?(position) && empty?(position)
            @grid[position[0]][position[1]] = mark
        else
            return "Invalid mark"
        end
    end

    def prints
        @grid.each do |sub_arr|
            print sub_arr
            puts
        end
    end
    
    def win_row?(mark) 
        @grid.any? { |row| row.all? { |ele| ele==mark } }
    end

    def win_col?(mark)
        i=0
        temp=[]
        while i<@grid.size
            @grid.each do |col|
                temp<<col[i] if col[i]==mark
            end
            i+=1
        end
        temp.size>=3
    end

    def win_diagonal?(mark)
        #L->R
        i=0
        temp_1=[]
        while i<@grid.size
            j=i
            while j<@grid.size
                temp_1<<@grid[i][j] if @grid[i][j]==mark
            j+=1
            i+=1
            end
        end
        return true if temp_1.size>=3
       
        #R->L
        k=0
        temp_2=[]
        while k<@grid.size
            f=@grid.size-1
            while f>=0
                temp_2<<@grid[k][f] if @grid[k][f]==mark
                f-=1
                k+=1
            end
        end
        return true if temp_2.size>=3
        false
    end

    def win(mark)
        return true if win_diagonal?(mark) || win_row?(mark) || win_col?(mark)
        false
    end
    
    #! Dependent -------------------------------------
    def empty_positions?
        @grid.each do |sub_arr|
            sub_arr.each do |ele|
                if ["1","2","3","4","5","6","7","8","9"].include?(ele)
                    return true
                end
            end
        end
        false
    end

end
