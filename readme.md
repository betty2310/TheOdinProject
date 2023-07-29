### Sub string

Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

```ruby
> dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
=> ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
> substrings("below", dictionary)
=> { "below" => 1, "low" => 1 }
```

- `Hash.new(0)` will initialize a hash with default value 0.
- Using `scan` to find list of matched words in the string, you can use `include?` to detect if the word in the string.

```ruby
def substrings(str, dic)
  res = Hash.new(0)
  dic.each do |word|
    matched_case = str.downcase.scan(word).length
    res[word] += matched_case unless matched_case == 0
  end
  puts res
end
```