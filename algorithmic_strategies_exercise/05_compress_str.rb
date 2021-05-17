# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

# def compress_str(str)
#     new_str = str.split("")
#     final_str = ""
#     new_str.uniq.each do |item|
#         if new_str.count(item) == 1
#             final_str+=item
#         else
#             final_str+=new_str.count(item).to_s+item
#         end
#     end
#     final_str
# end

#* Using Hash
def compress_str(str)
    the_str = str.split("")
    count_hash = Hash.new(0)
    the_str.each { |item| count_hash[item]+=1 }
    result_str=""
    count_hash.each do |k,v|
        if v>1
            result_str+=(v.to_s+k)
        else
            result_str+=k
        end
    end
    result_str
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
