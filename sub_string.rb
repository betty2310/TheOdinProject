def substrings(str, dic)
  res = Hash.new(0)
  dic.each do |word|
    matched_case = str.downcase.scan(word).length
    res[word] += matched_case unless matched_case == 0
  end
  puts res
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
