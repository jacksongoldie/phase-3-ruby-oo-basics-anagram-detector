require 'pry'

class Anagram

    attr_accessor :word 

    def initialize(word)
        @word = word
    end

    def match(array)
        matches = []

       word_letters =  @word.chars
       word_sorted = word_letters.sort

       #binding.pry
        array.map {|x| 
            letters_array = x.chars
            sorted_array = letters_array.sort
        
            if sorted_array == word_sorted
                matches << x
            end
        }
        matches
    end
end