=begin 
0. separate phrase into an array of words, case insensitive

1. for each word, add all its substrings to an array
  a. get the number of characters (n) in word
  b. Take groups of characters:
    Starting with character 1, take it alone, than take it with next, than it with 2 next, until takes it until the end
    Goes do character 2, takes it alone, than take it with next, than it with 2 next, until takes it until the end
      ...
    Repeats that until last character

2. creates a hash that contains each element of the valid_substrings array and the number of times it appears in the array in step 1

3. removes from the hash all elements that appeared 0 times

=end

def substrings(phrase, valid_substrings)
  phrase = phrase.delete("!").delete(".").delete(",").delete("?").delete("\'")
  phrase = phrase.downcase
  phrase = phrase.split(" ")
  substrings = []
  phrase.each do |word|
    size = word.length
    for initial_char in 0..(size-1)
      for length in 1..(size-initial_char)
        substrings << word[initial_char, length]
      end
    end
  end
  hash = {}
  valid_substrings.each do |element|
    hash[element] = substrings.count(element.downcase)
  end
  hash.select! {|key, value| value != 0}
  hash
end