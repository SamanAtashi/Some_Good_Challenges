# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.


def coprime?(num_1, num_2)
    (2..9).each do |item|
        return false if (num_1%item)==0 && (num_2%item==0)
    end
    true
end

def coprime?(num_1, num_2)
    # iterate till one of the nums 
    (2..num_1).each do |item|
        return false if (num_1%item)==0 && (num_2%item==0)
    end
    true
end

def coprime?(num_1, num_2)
    (2..num_1).none? do |item|
        (num_1%item)==0 && (num_2%item==0)
    end
end


p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
