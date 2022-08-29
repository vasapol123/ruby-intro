# When done, submit this entire file to the autograder.

# Part 1
""
def sum arr
   arr.sum
end

def max_2_sum arr
   arr.max(2).sum
end

def sum_to_n? arr, n
   return false unless arr.length > 1

   !arr.find do |el|
   arr.include?(n - el) && ((n - el) == el ? arr.count(el) > 1 : true)
   end.nil?
end

# Part 2

def hello(name)
   "Hello, #{name}"
end

def starts_with_consonant? s
   !(s =~ /^(?![aeiou])[a-z]/i).nil?
end

def binary_multiple_of_4? s
   !(s =~ /^(?:[01]*00|0)$/).nil?
end

# Part 3

class BookInStock
   attr_accessor :isbn
   attr_accessor :price
   
   def initialize isbn, price
      raise ArgumentError,
         "`isbn` should not be empty!" if isbn.length == 0
      raise ArgumentError,
         "`price` should not be less than or equal to zero!" if price <= 0

      @isbn = isbn
      @price = price
   end

   def price_as_string
      "$%.2f" % @price
   end
end
