require 'pry'
class Anagram 
  attr_accessor :word
  #able to call .word, .word=()

  #initialize every new instance of anagram class with a word value
  def initialize(word)
    @word = word
  end

  #find the anagrams for a word in a list of possible matches
  #convert the possible matches to an array %w
  #use collect to itterate and return an array
  #split and sort each possible word and given word (self)
  #if equal add return
  def match (pos_matches)
    #binding.pry
    pos_matches.select do |pos|
      pos.split("").sort == self.word.split("").sort
    end
  end

end
#Pry.start
