def substrings(word, dictionary)
  hash=Hash.new(0)
  arr=word.downcase.split(" ")
  dictionary.each do |wrd|
    arr.each do |part|
      hash[wrd.downcase] +=1 if part.include?(wrd.downcase)
    end
  end
  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sentence="Howdy partner, sit down! How's it going?"

puts substrings(sentence, dictionary)
