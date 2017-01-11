def fizz_buzz_silly(range)
  range.each do |num|
    saying = ''
    saying += 'Fizz' if num % 3 == 0
    saying += 'Buzz' if num % 5 == 0
    saying = num if saying == ''
    puts saying
  end
end

def fizz_buzz_classic(range)
  range.each do |num|
    fizz = num % 3 == 0
    buzz = num % 5 == 0
    puts case
         when fizz && buzz then 'FizzBuzz'
         when fizz then 'Fiz'
         when buzz then 'Buzz'
         else num
    end
  end
  #   puts 'FuzzBuzz'
  # elsif num % 3 == 0
  #   puts 'fizz'
  # elsif num % 5 == 0
  #   puts 'buzz'
  # else
  #   puts num
  # end
end

range = (1..100).to_a
# fizz_buzz_silly(range)
fizz_buzz_classic(range)
