def combine_anagrams(words)
  if words == nil 
    []
  end
  hash = Hash.new
  words.each do |word|
    temp = word.downcase.chars.to_a.sort.to_s
    hash.has_key?(temp) ? hash[temp] = hash[temp] +word.to_a : hash[temp] = word.to_a
  end
  result = Array.new
  hash.keys.each do |key|
    result += [hash[key]]
  end
  result
end

puts combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams'])
