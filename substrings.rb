dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, dictionary)
  dictionary.each do |word|
    matches = 0
    for i in 0..(word.length - 1)
      for j in 0..(string.length - 1)
        loop do
        if word[i + matches] == string[j + matches]
          matches += 1
        else
          matches = 0
        end
        break if matches = 0
      end
    end
  end
end

def substrings (string, dictionary)
  dictionary.each do |word|
    matches = 0
    for i in 0..(string.length - 1)
      if string[i] == word[matches]
        matches += 1
        if matches == word.length
          # add word count to hash
        end
      end
    end
  end
end