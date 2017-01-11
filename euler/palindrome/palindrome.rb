require 'byebug'

def palindrome?(number)
  number.to_s.reverse == number.to_s ? true : false
end

# calculate all palindromes

def multiply_numbers(num1, num2)
  product = num1 * num2
  if palindrome?(product)
    product
  else
    'not a palindrome'
  end
end

def three_digit_multipliers(high, low)
  palindrome_list = []

  array = (low..high).to_a
  array.each do |x|
    array.each do |y|
      product = x * y
      palindrome_list << product if palindrome?(product)
    end
  end
  palindrome_list.max
end

puts three_digit_multipliers(999, 100)
