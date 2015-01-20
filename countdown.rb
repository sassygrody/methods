countdown = 5

until countdown == 0
  sleep(0.5)
  puts countdown
  countdown = countdown - 1
end

def recursive_countdown(num)
  return if num == 0
  puts num
  sleep(0.5)
  recursive_countdown(num - 1)
  puts 'blast off!' if num == 1
end

recursive_countdown(3)
