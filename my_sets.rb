def my_sets(arr, size)
  return [] if size == 0 || size > arr.length
  return arr.map {|x| [x]} if size == 1

  head, tail = arr[0], arr[1..-1]
  my_sets(tail, size - 1).map {|s| s << head } + my_sets(tail, size)
end

p my_sets([1, 2, 3, 4], 2)

def fib(x)
  return x if x < 3

  fib(x - 1) + fib(x - 2)
end

p fib(5)
