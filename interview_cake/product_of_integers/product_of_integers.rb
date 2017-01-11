require 'byebug'

def product_of_integers(arr)
  product_arr = []
  # for i in 0...arr.length
  arr.each do
    ignored_num = arr.shift
    product_arr << arr.inject(:*)
    arr << ignored_num
  end
  product_arr
end

arr = [1, 7, 3, 4]
p product_of_integers(arr)
