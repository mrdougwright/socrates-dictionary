#{"""}Create a Dictionary class. 
#hen you create a new dictionary (such as one for English), 
#it should be an empty hash. Then, you should be able to add words 
#and their definition by calling a method and passing in a hash as an 
#argument. You should also be able to list all of the words and their 
#definitions in alphabetical order with another method. Finally, you 
#should be able to search the dictionary by passing in the first few 
#letters of a word and returning all of the words that start with those 
#letters, along with their definitions.

class Dictionary
  attr_accessor :entries
  
  def initialize
    @entries = {}
  end
  
  def add(word)
    if !word.is_a?(Hash)
      word = Hash[word,nil]
    end
    @entries.merge!(word)
  end
  
  def keywords
    @entries.keys.sort
  end
      
  def include?(word)
    @entries.include?(word)
  end
  
  def find(word)
    n = word.length
    tempHash = {}
    
    @entries.each do |dictWord, defin|
      if word == dictWord[0..n-1]
        tempHash.merge!({dictWord => defin})
      end
    end
    tempHash
  end
end

english = Dictionary.new
english.add('fish'=>'aquatic animal')
english.add('great'=>'remarkable')
english.add('fiend' => 'wicked person')
puts english.find('fi')






