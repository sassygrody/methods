require 'byebug'

def find_duplicates(arr)
  arr.sort!
  doubles_arr = []
  until arr.length == 0
    shift = arr.shift
    doubles_arr << shift if shift == arr[0]
  end
  doubles_arr
end

arr = [1, 1, 2, 2, 3, 4, 4, 5, 7]
p find_duplicates(arr)
