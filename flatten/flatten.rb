# require 'pry'

def my_flatten(nested_arr)
  arr = []
  until nested_arr.length == 0
    popped_values = nested_arr.shift
    if popped_values.class != Array
      arr << popped_values
    else
      arr << popped_values.shift until popped_values.length == 0
    end
  end
  arr
end
p my_flatten([[1, 2, 3], [5, 6, 7]]) == [1, 2, 3, 5, 6, 7]
p my_flatten([[1], ["string1", "string2"]]) == [1, "string1", "string2"]

p my_flatten([1, 2, ["string1"], 3]) == [1, 2, "string1", 3]
p my_flatten([0, [1, 2, 3], 4, 5, "HI CASEY"])
