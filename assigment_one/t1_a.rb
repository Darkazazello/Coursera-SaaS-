def palindrome?(s)
  if s == nil
    return false
  end
  a = ""
  s = s.downcase  
  s.scan(/\w+/) do |w|
    a += w
  end  
  b = a.reverse
  if a.eql?("") 
    return false
  end  
  a.eql?(b)
end

def count_words(s)
  
  result = Hash.new
  if s == nil
    return result
  end
  s = s.downcase  
  s.scan(/\w+/) do |w|
    result.has_key?(w) ? result[w] = result[w] + 1 : result[w]=1
  end
  result
end

