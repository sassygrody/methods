def fib(num_on_seq)
  if num_on_seq < 3
    return num_on_seq
  end

  fib(num_on_seq - 1) + fib(num_on_seq - 2)
end

p fib(1)
p fib(2)
p fib(3)
p fib(4)
p fib(5)
p fib(6)
p fib(7)
