def my_map(arr , &block)
    new_arr=[]
    # === arr.map(&block)
    arr.each do |ele|
        new_arr<<block.call(ele)
    end
    return new_arr
end

def my_select(arr,&block)
    new_arr=[]
    arr.each do |ele|
        new_arr<<ele if block.call(ele)
    end
    return new_arr
end

def my_count(arr, &block)
    my_count=0
    arr.each do |ele|
        my_count+=1 if block.call(ele)
    end
    return my_count
end

def my_any?(arr , &block)
    arr.each do |ele|
        if block.call(ele)
            return true
        end
    end
    return false
end

def my_all?(arr , &block)
    arr.each do |ele|
        if block.call(ele)==false
            return false
        end
    end
    return true
end

def my_none?(arr , &block)
    arr.each do |ele|
        if block.call(ele)
            return false
        end
    end
    return true
end

