def select_even_nums(arr)
    arr.select(&:even?)
end

def reject_puppies(dogs)
    dogs.reject { |dog| dog["age"]<=2 }
end

def count_positive_subarrays(arr)
    arr.count { |ele| ele.sum>0 }
end

def aba_translate(str)
    vowels="aeoiu"
    # split
    # iterate --> find index --> add char b char
    new_str=""
    str.each_char.with_index do |char , idx|
        if vowels.include?(char)
            new_str+=char+"b"+char
        else
            new_str+=char
        end
    end
    return new_str
end

def aba_array(arr)
    arr.map do |word|
        aba_translate(word)
    end
end