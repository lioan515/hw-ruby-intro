# When done, submit this entire file to the autograder.

# Part 1

def sum arr #use inject to sum all numbers in an array
   arr.inject(0){|num_sum, n| num_sum + n}
end

def max_2_sum arr #sort array, then call the sum function on the an array of the last two elements
  sum arr.sort.last 2 
end

def sum_to_n? arr, n #create all possible pairs of elements, and test each for any that sum to n
  arr.combination(2).any? {|pair| sum(pair) == n}
end

# Part 2

def hello(name) #append name to a hello string
   "Hello, " + name
end

def starts_with_consonant? s #create a regex that checks if the first letter is NOT a vowel
  if /^[^aeiou\W]/i.match s #i makes regex ignore case
    true
  else
    false
  end
end

def binary_multiple_of_4? s #regex checks if the string is binary, and the last 2 characters are 0
  if s == "0"
    true
  elsif /^[01]*00$/.match s
    true
  else
    false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn #isbn number
  attr_accessor :price #price
  
  def initialize(isbn, price)#constructor
    raise ArgumentError if isbn.empty? || price <= 0 #needs an isbn number, and must have a positive price
    @isbn = isbn
    @price = price
  end
  
  def price_as_string #basically works like any other Object Oriented language
   return "$%.2f" % @price
  end
end
