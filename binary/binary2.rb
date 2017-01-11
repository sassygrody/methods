# find the value in the given list
def binary_search2(list, value)
  list.sort!
  low = 0
  high = list.length

  while low <= high do
    mid = ((low + high) / 2)
    if list[mid] > value
      high = mid - 1
    elsif list[mid] < value
      low = mid + 1
    else
      return "index: #{mid} value: #{list[mid]}"
    end
  end
  "not found"
end


list = [10, 20, 30, 40, 50, 60, 70, 80, 90].shuffle

p binary_search2(list, 10)
p binary_search2(list, 44)
