dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, dictionary)
  hash = {}
  string = string.downcase
  dictionary.each do |word|
    matches = 0
    for i in 0..(string.length - 1)
      if string[i].downcase == word[matches]
        if matches == 0
          resume = i + 1
        end
        matches += 1
        if matches == word.length
          # add word count to hash
          if hash[word] 
            hash[word] += 1
          else
            hash[word] = 1
          end
          # resume checking
          i = resume
          matches = 0
        end
      else
        matches = 0
      end
    end
  end
  hash
end