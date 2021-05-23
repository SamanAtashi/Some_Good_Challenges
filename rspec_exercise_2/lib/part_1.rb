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

def merge(h_1, h_2)
    new_hash = Hash.new
    h_1_k = h_1.keys
    h_2_k = h_2.keys
    h_1_v = h_1.values
    h_2_v = h_2.values
    new_hash
end