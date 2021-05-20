# def hipsterfy(word)
#     i=word.length-1
#     vowels="aeoiu"
#     while i>=0
#         # p word[i]
#         # p vowels.include?(word[i])
#         if vowels.include?(word[i])
#             word[i] = ""
#             break
#         end
#         i-=1
#     end
#     return word
# end

def hipsterfy(word)
    i=word.length-1
    vowels="aeoiu"
    while i>=0
        if vowels.include?(word[i])
            return word[0...i] + word[i+1..-1]
        end
        i-=1
    end
    word
end

def vowel_counts(str)
    new_hash=Hash.new(0)
    str.split("").each_with_index do |char,idx|
        new_hash[char.downcase]+=1
    end
    new_hash
end

def caesar_cipher(msg, n)
    alphabet = ("a".."z").to_a
    new_msg = ""
    msg.each_char do |char|
        if alphabet.include?(char)
            old_idx = alphabet.index(char)
            new_idx = old_idx + n
            new_msg += alphabet[new_idx%26]
            # we know our array is less than 26 char so if we go beyond that we reset to the 0 by module (remainder)
        else
            new_msg+=char
        end
    end
    new_msg
end

# def caesar_cipher(s, k)
# 	alpha= "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#     
#     alpha_s="ABCDEFGHIJKLMNOPQRSTUVWXYZ".downcase
#     # make the alphas rotate
#     new_alpha = alpha.split("")
#     new_alpha_s = alpha_s.split("")
#     k.times { |char| new_alpha.unshift(new_alpha.pop) }
#     k.times { |char| new_alpha_s.unshift(new_alpha_s.pop) }
    
#     new_str = ""
#     s.each_char do |char , idx|
#         if new_alpha.include?(char)
#            new_str+=alpha[new_alpha.index(char)]
#         elsif new_alpha_s.include?(char)
#             new_str+=alpha_s[new_alpha_s.index(char)]
#         else
#             new_str+=char
#         end

#     end
#     new_str
# end

# def caesar_cipher(s, k)
#   arr = s.chars.map do |char|
#     if not (/[a-z]/i) === char
#       char
#     elsif char == char.downcase
#       (((char.ord - 97 + k) % 26) + 97).chr
#     else
#       (((char.ord - 65 + k) % 26) + 65).chr
#     end
#   end
#   arr.join
# end

# def caesar_cipher(s, k)
# 	s.split("").map {|c| /[a-z]/ =~ c ? ((c.ord - 'a'.ord + k)%26 + 'a'.ord).chr : /[A-Z]/ =~ c ? ((c.ord - 'A'.ord + k)%26 + 'A'.ord).chr : c}.join
# end

# def caesar_cipher(s, k)
# 	s.gsub(/[a-z]/i) { |ch|
#         base = ch.ord & 32 == 0 ? 65 : 97
#         ((ch.ord - base + k)%26 + base).chr
#     }
# end

# def caesar_cipher(s, k)
# 	k.times { s = s.tr("a-zA-Z", "b-zaB-ZA") }
# 	s
# end