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