# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck. 
require "byebug"
def is_prime?(num)
    (2...num).each do |ele|
        if num % ele ==0
            return false
        end
    end
    return true
end
def largest_prime_factor(num)
    divisiors = []
   # find all the divisiors of num
    (2..num).each do |ele|
        divisiors<<ele if num%ele == 0
    end
   # check if they are prime
    divisiors.select! do |checkie|
        is_prime?(checkie)
    end
    divisiors[-1]
   # return last one
end

#? -----------------------------------------------

def unique_chars?(str)
    str=str.split("")
    str.each_with_index do |char , idx|
        i=idx+1
        while i<str.size
            if char==str[i]
                return false
            end
            i+=1
        end
    end
    true
end

#? -----------------------------------------------

def dupe_indices(arr)
    # iterate array
    # find dups or more ==>make it key
    # find the index of them ==> push to the array
new_arr = []
    arr.each do |ele|
        if arr.count(ele)>1 
            arr.each_with_index do |item , idx|
                new_arr<<idx    
            end
        end
    end
new_arr
end

#? -----------------------------------------------
# def my_sort(list, new_array = nil)
#   return new_array if list.size <= 0

#   if new_array == nil
#     new_array = []
#   end
#   min = list.min
#   new_array << min
#   list.delete(min)

#   my_sort(list, new_array)

# end

# def ana_array(arr1 , arr2)
#         sort_1 = my_sort(arr1)
#         sort_2 = my_sort(arr2)
#     sort_1==sort_2
# end
def ana_array(arr1 , arr2)
    # iterate onece arr1 through arr2
    arr1.each do |ele1|
        return false unless arr2.any?(ele1)
    end
    # iterate onece arr2 through arr1
    arr2.each do |ele2|
        return false unless arr1.any?(ele2)
    end
    true
end
