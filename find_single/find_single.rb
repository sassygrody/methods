require "byebug"
# you have an unsorted array of numbers, all of which have a duplicate but one
# how do you identify the one, without using built-in methods

def find_single_in_array(arr)
  arr.sort!
  singles_arr = []
  doubles_arr = []
  until arr.length == 0
    shift = arr.shift
    if shift != arr[0] && shift != doubles_arr[-1]
      singles_arr << shift
    else
      doubles_arr << shift
    end
  end
  singles_arr
end

def find_by_counting(arr)
  singles_arr = []
  arr.map do |number|
    singles_arr << number if arr.count(number) == 1
  end
  singles_arr
end

def find_by_partition(arr)
  singles_arr, __ = arr.partition do |number|
    arr.count(number) == 1
  end
  singles_arr
end

arr = [1, 1, 2, 2, 3, 4, 4, 5, 6, 6, 7].shuffle
p find_single_in_array(arr)

arr = [1, 1, 2, 2, 3, 4, 4, 5, 6, 6, 7].shuffle
p find_by_counting(arr)

arr = [1, 1, 2, 2, 3, 4, 4, 5, 6, 6, 7].shuffle
p find_by_partition(arr)
