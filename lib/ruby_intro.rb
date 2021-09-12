# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  result = 0
  arr.each do |x| result += x end
  result
end


def max_2_sum arr
  arr = arr.sort.reverse
  sum(arr[0,2])
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr = arr.sort
  l = 0
  r = arr.length - 1
  flag = FALSE
  while l < r
    if (arr[l] + arr[r] == n)
      flag = true
      break
    elsif (arr[l] + arr[r] < n)
      l += 1
    else
      r -= 1
    end
  end
  flag
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s = s.downcase
  s =~ /\A(?=[^aeiou])(?=[a-z])/i 
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s = s.downcase.gsub(/\s/,'')
  flag = false
  if s =~ /[^0-9]/i
    flag = false
  elsif s =~ /\A0+\z/i
    flag = true
  elsif s =~ /0{2,}\z/i
    flag = true
  else 
    flag = false
  end
  flag
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price) # optional argument
    if (not isbn.is_a?(String)) or (isbn == '') or (price<=0)
      raise ArgumentError
    end
  
      @isbn = isbn
      @price = price
  end
  
  def price_as_string()
      s = @price.to_s
      if s !~ /\./i
          s += '.00'
      elsif s =~ /\.[0-9]\z/i
          s += '0'
      end
      s = '$' + s
      s
  end
end
