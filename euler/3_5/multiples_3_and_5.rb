require 'pry-byebug'

def multiples_3_and_5(arr, less_than_num)
  multiples = []

  arr.map do |x|
    multiples << x if (x % 3 == 0) || (x % 5 == 0)
  end

  multiples.select { |y| y < less_than_num }.inject(:+)
end
