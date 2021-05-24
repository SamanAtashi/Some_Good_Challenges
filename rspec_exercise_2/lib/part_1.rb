def partition(arr, num)
    #!  remember the reference and memory when building new data structure
    new_arr = Array.new(2) { Array.new }
    arr.each do |item|
        if item<num
            new_arr[0]<<item
        else
            new_arr[1]<<item
        end
    end
    new_arr
end

def merge(hash_1, hash_2)
    new_hash = Hash.new
    i=0
    while i<hash_1.size
        new_hash[hash_1.keys[i]]=hash_1.values[i]
        i+=1
    end
    j=0
    while j<hash_2.size
        new_hash[hash_2.keys[j]]=hash_2.values[j]
        j+=1
    end
    new_hash
end

