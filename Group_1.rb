#! Outlier Number:
=begin
#? Look at the examples then solve it
#* with enumerables method:
def outlier_number(arr)
  arr.partition{|x| x.odd?}.find{|x| x.size==1}[0]
end

#* without enumerables method
def outlier_number(arr)
    count_e = 0
    count_o = 0
    the_outlier_e=0
    the_outlier_o=0
    for i in arr
        if i.even? == true
            count_e+=1
            the_outlier_e+=i
        else
            count_o+=1
            the_outlier_o+=i
        end
    end
    (count_o == 1) ? the_outlier_o : the_outlier_e
end

def outlier_number(arr)
  even = arr.select(&:even?)
  odd = arr.select(&:odd?)
  if even.size > 1
   odd.first
  else
    even.first
  end
end

#* with the help of select and proc
def outlier_number(arr)
  evens = arr.select(&:even?)
	odds = arr.select(&:odd?)
	evens.one? ? evens[0] : odds[0]
end

def outlier_number(a)
	a.select(&:odd?).size == 1 ? a.select(&:odd?)[0] : a.select(&:even?)[0]
end

#* Mathematical
def outlier_number(arr)
	odd = []
	even = []
	arr.each { |x|
		if x % 2== 0
			even.push(x)
		else
			odd.push(x)
		end
	}
	return odd.length == 1? odd[0]: even[0]
end

#? EXAMPLES ----------------------------------------------------
p outlier_number([2, 3, 4]) 
#➞ 3 "odd among evens"
p outlier_number([1, 2, 3]) 
#➞ 2 "even among odds"
p outlier_number([4, 1, 3, 5, 9])
#➞ 4 "even among odds"

=end

=begin
#! Convert All Array Items to String:

#* Shortest solution:
def parse_list(a)
	a.map(&:to_s)
end

def parse_list(arr)
	arr.map{|i| i.to_s}
end

#* Old Way:
def parse_list(arr)
	answer = []
	counter = 0
	length = arr.length
	while counter < length
		item = arr[counter]
		revised = item.to_s
		answer.push(revised)
		counter += 1
	end
	return answer
end
def parse_list(arr)
	new_arr = []
	arr.map {|item|
		new_arr << item.to_s
	}
	return new_arr
end

#? EXAMPLES ----------------------------------------------------

p parse_list([1, 2, "a", "b"]) 
# ➞ ["1", "2", "a", "b"]
p parse_list(["abc", 123, "def", 456]) 
# ➞ ["abc", "123", "def", "456"]
p parse_list([1, 2, 3, 17, 24, 3, "a", "123b"]) 
# ➞ ["1", "2", "3", "17", "24", "3", "a", "123b"]
p parse_list([]) 
# ➞ []

=end

=begin
#! Abbreviate Sentence:

#* Straight forward method
def abbreviate_sentence(sent)
  new_arr = []
  sent.split(" ").each do |item|
     if item.size>4 
        new_arr<<item.split(/[aeoiu]/).join
     else
        new_arr<<item
     end
  end
return new_arr.join(" ")
end

#* With the Helper method
def abbreviate_sentence(sent)
    words=sent.split(" ")
    new_words=[]

    words.each do |word|
        if word.length > 4 
            new_word=abbreviate_word(word)
            new_words<<new_word
        else
            new_words<<word
        end
    end
    new_sent = new_words.join(" ")
end

def abbreviate_word(word)
    vowels="aeoiu"
    no_vowels=""

    word.each_char do |char|
        if !vowels.include?(char)
            no_vowels+=char
        end
    end
    return no_vowels
end



#? EXAMPLES ----------------------------------------------------
p abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
p abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"
=end

=begin
#! Is Valid Email:
# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

#* with RegEx:

# def is_valid_email(str)
#     if str.count("@")==1
#         splitted = str.split("@")
#         if splitted[0].downcase==splitted[0]
#             return false if splitted[0].match?(/[^a-z]/)
#             return splitted[1].count(".")==1
#         end
#     end
#         return false
# end

#* simple logic nad tools:

def is_valid_email(str)
    parts = str.split("@")
    left = parts[0]
    right = parts[1]
    alphabetic='abcdefghijklmnopqrstuvwxyz'

    # whether we have "@" or not
    if parts.length != 2
        return false
    end

    left.each_char do |char|
        if !alphabetic.include?(char)
            return false
        end
    end

    if right.split(".").length == 2
        return true
    else
        return false
    end
end

#? EXAMPLES ----------------------------------------------------
puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
=end

=begin
#! Array Translate:

def array_translate(arr)
    nums = []
    strs = []
    # iterate and separate nums and strs into 2 different arr
    arr.each do |i|
        if i.is_a?(Numeric)
            nums<<i
        else
            strs<<i
        end
    end
    p nums 
    p strs
    # make new str and concate each one of strs , num times
    result=""
    j=0
    while j<nums.size
        nums[j].times do
            result+=strs[j]
        end
        j+=1
    end
    return result
end


#? EXAMPLES ----------------------------------------------------
p array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

p array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts

=end