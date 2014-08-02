##iterating through arrays with each
def arrayiterator(arr)

arr.each do |item|
	puts item
end

end
##success


##iterates with key and value using each(special method)
def each_index(arr)

arr.each_with_index do |value,index|
	puts value
	puts index
end

end
##success

##iterate 'x' number of times can also be used as a counter by adding |i|
def multiple_iterate(x)

x.times do
	puts "bottles of beer on the wall"
end

end
##success

##endless loop that breaks with two criteria
def endless_loop()
x = 0
while true
	if (x>250) && (x%7 == 0)
		return x
	end
	x+=1
end

end
##success
##gets all the factors of numbers 1-100 using modular
def factors()

(1..100).each do |i|
	(1..i).each do |j|
		if i%j == 0
			puts j.to_s + ' is a factor of ' + i.to_s
		end
	end
end
end
##success

##bubblesort doubleloop that loops a number of times equal to array length-1 and
#iterates through the array and swaps if out of order
def bubbleSort(arr)
	length = arr.length
	length.times do
		temp = nil
		arr.each_with_index do |value,index|
			if temp == nil
				temp = value
			elsif temp > value
				arr[index-1] = arr[index]
				arr[index] = temp
			else
				temp = value
			end
		end
	end
	return arr
end
##success
##Rock paper scissors, for only rock input
def rps(string)
prng = Random.new
value = prng.rand(1..3)
	if string == "Rock"
		if value == 1
			"Rock, Draw"
		elsif value == 2
			"Scissors, Win"
		else
			"Paper, Lose"
		end
	end
end
##Success

##swings the males around with females
def swingers(arr)
males = []
prng = Random.new
i=0	
	arr.each do |couple|
		males << couple[0]
	end
	length = males.length-1
	while !males.empty?
		swung = males.delete_at(prng.rand(0..length))
		length-=1
		arr[i][0] = swung
		i+=1
	end
	arr
end
##success

##Reverse Polish Calculator
def RPN(arr)


end
##unfinished

##removes any duplicates in an array
def my_uniq(arr)
new = []
	arr.each do |value|
		if !new.include?(value)
		new<<(value)
		end
	new
	end
end
##success
##finds the first set of pairs that equal to 0
def twoSums(arr)
i=0
	while i<(arr.count-2)
		j=i+1
		while j<(arr.count-1)
			if (arr[i]+arr[j]) == 0
				set = [arr[i],arr[j]]
				return set
			end
		j+=1 
		end
	i+=1
	end
end
##success
def myTranspose(array)
##row size

end
##unfinished

##will go through eachand pick the one that meetscriteria to be true 
def howtoselect(arr)
arr.select do |value|
	value*value == 4
end

end
##Success
##multiplies each element of arr and returns a new one with having gone throug the block
def multiplied(arr)
arr.map do |value|
value*2
end
end
##success
##finds median
def median(arr)
	length = arr.count
	if length%2 == 0
		return (arr[(length/2)-1]+arr[length/2])/2.0
	else
		return arr[(length-1)/2]
	end
end
##success
##concatenate strings with inject
def concatenate(arr)
	arr.inject do |accum, element|
	accum + element
	end
end
##Success

##duplicate hash merge test
#will ignore duplicates with precedence in first hash
#but will overwrite if different value
def duplicate(hash1, hash2)
hash1.merge(hash2)

end
#success
##get hash makes key first letter of each value
def hash_correct(hash)
values = hash.values
correct_hash = {}
	values.each do |value|
		correct_hash[value[0]] = value
	end
	correct_hash
end
##Success
##caesar cipher, shifts each letter in the string by a number
def letter_queue(letter,number)
	alpha_arr = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
	adjusted_index = (alpha_arr.index(letter)+number)%26
	adjusted_letter = alpha_arr[adjusted_index]
adjusted_letter
end
def caesar(string, num)
new_string = ""
	string.each_char do |letter|
		new_string<<letter_queue(letter,num)
	end
new_string
end
##Success

def prime?(num)
	
	
  (2...num).each do |i|
    if (num % i) == 0
      return false
    end
  end
  true
end

def primes(num_primes)
debugger
  ps = []
  num = 1
  while ps.count < num_primes
    ps << num if prime?(num)
	 num+=1
  end
 
  return ps
end

require 'debugger'


