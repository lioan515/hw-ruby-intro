# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.inject(0){|num_sum, x| num_sum + x}
end

def max_2_sum arr
  return sum(arr.sort.last(2))
end

def sum_to_n? arr, n
 return arr.combination(2).any? {|pair| sum(pair) == n}
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) == nil
   return false
  else
   return true
  end
end

def binary_multiple_of_4? s
  if(s.to_s =~ )
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
   return "$%.2f" % @price
  end
end
