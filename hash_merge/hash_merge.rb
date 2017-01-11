require "pry-byebug"
# write me a method to merge hashes
# modify it to change the values to an array if there are duplicate keys
#  modify it to accept any number of hashes

# def merge([hashes])
#  hash1 = hashes[0]
#  (hashes[1]..hashes[-1]).each do |hash|

#    hash.each do |key, value|
#      if hash1[key]? && hash1[key].Array?
#        hash1[key] = hash1[key] << value
#      elsif hash1[key]?
#        hash1[key] = [hash1[key] + value]
#      else
#        hash1[:key] = [value]
#      end
#   end

#  return hash1
# end

def hash_merge(hash_array)
  new_hash = {}
  hash_array.each do |hash|
    hash.each_pair do |k, v|
      new_hash[k] = v
    end
  end
  new_hash
end

def hash_merge_with_duplicates(hash_array)
  new_hash = {}
  hash_array.each do |hash|
    hash.each_pair do |k, v|
      !new_hash[k].nil? ? new_hash[k] = [new_hash[k]] + [v] : new_hash[k] = v
    end
  end
  new_hash
end
