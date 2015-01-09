def binary_search(target, test_array, lower = 0, high = test_array.length - 1)
  test_array.sort!
  mid_point = (high + lower) / 2

  return -1 if high < lower

  if target == test_array[mid_point]
    return mid_point
  elsif test_array[mid_point] > target
    binary_search(target, test_array, lower, mid_point - 1)
  else
    binary_search(target, test_array, mid_point + 1, high)
  end
end

# puts "target: 35, got: #{binary_search(135, test_array)}"
# puts "high : #{test_array.length}"
# puts "middle : #{test_array.length - 1} + test_array[0]"
# puts test_array[0]

test_array = (100..200).to_a
puts binary_search(135, test_array) == 35

# test_array = [13, 19, 24, 29, 32, 37, 43]
# puts binary_search(35, test_array) == -1

test_array.each do |num|
  puts "#{num}, #{binary_search(num, test_array)}"
end
