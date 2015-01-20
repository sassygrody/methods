def recursive_fib(x)
  return x if x < 3
  fib(x - 1) + fib(x - 2)
end

p recursive_fib(5)

def loop_fib(x)
  return x if x < 3
  starting = 0
  following = 1
  ending = starting + following

  x.times do
    puts ending
    starting = following
    following = ending
    ending = starting + following
  end
end

p loop_fib(8)
#  1 + 1 = 2
