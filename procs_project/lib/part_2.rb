def reverser(str , &block)
    block.call(str.reverse)
end
def word_changer(sen, &block)
    new_sen=[]
    sen.split(" ").each do |word|
        new_sen<<block.call(word)
    end
    return new_sen.join(" ")
end

def greater_proc_value(num, prc1, prc2)
    prc1.call(num)>prc2.call(num) ? prc1.call(num) : prc2.call(num)
end

def and_selector(arr, prc1, prc2)
    new_arr= []
    arr.each do |ele|
        new_arr<<ele if prc1.call(ele) && prc2.call(ele)
    end
    return new_arr
end

def alternating_mapper(arr, prc1 , prc2)
    new_arr=[]
    arr.each_with_index do |ele , idx|
        if idx.even?
            new_arr<<prc1.call(ele)
        else
            new_arr<<prc2.call(ele)
        end
    end
    return new_arr
end