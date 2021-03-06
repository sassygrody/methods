require 'pry-byebug'

def my_sets(arr, size)
  return [] if size == 0 || size > arr.length
  return arr.map { |x| [x] } if size == 1

  head, tail = arr[0], arr[1..-1]
  my_sets(tail, size - 1).map { |s| s << head } + my_sets(tail, size)
end

p my_sets([1, 2, 3, 4], 3)
