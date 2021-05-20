def average(n1,n2)
    (n1+n2)/2.0
end

def average_array(arr)
    sum = arr.reduce do |acc,curr|
        acc+curr
    end
    sum.to_f/arr.size
end

def repeat(str,num)
    new_str = ""
    num.times do |word|
        new_str+=str
    end
    new_str
end

def yell(str)
    str.upcase+"!"
end

def alternating_case(sen)
    # separate by space
    # Upcase -->downcase 
    new_sen = []
    sen.split(" ").each_with_index do |word,idx|
        if idx==0 || idx%2==0
            new_sen<<word.upcase
        else
            new_sen<<word.downcase
        end
    end
    new_sen.join(" ")
end