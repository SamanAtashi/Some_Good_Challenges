# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

# #* if you want the number of each word
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

# #* if you want the number of each word
# def compress_str(str)
#     the_str = str.split("")
#     count_hash = Hash.new(0)
#     the_str.each { |item| count_hash[item]+=1 }
#     result_str=""
#     count_hash.each do |k,v|
#         if v>1
#             result_str+=(v.to_s+k)
#         else
#             result_str+=k
#         end
#     end
#     result_str
# end

#*
def compress_str(str)
    compressed=""
    i=0
    # Outer loop goes through all when we increment i+=1
    while i< str.length
        char = str[i]
        count=0
        # Inner loop takes one char and loops until it stays the same
        while char==str[i]
            count+=1
            # we only increment Outer loop when we are done with the sames
            i+=1
        end
        if count>1
            compressed+=count.to_s+char
        else
            compressed+=char
        end
    end
    compressed
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
