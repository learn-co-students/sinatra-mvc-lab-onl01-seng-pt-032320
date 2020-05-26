class PigLatinizer 
    attr_reader :words

    def piglatinize(words) 
        words_arr = words.split() 
        words_arr.collect do |word| 
            if word.downcase.start_with?("a","e","i","o","u") 
                vowels(word) 
            elsif !word.downcase.start_with?("a","e","i","o","u")
                consonants(word)
            end 
        end.join(" ")
    end 
    
    
    def consonants(word)
        result = word.scan(/^([^aeiou]+)/).first[0]  # scans word and returns the starting consonants [["str"]] so we need .first[0] 
        slice = word.slice!(result) #=> "str"
        word + slice + "ay" #word = "ing" 
    end 

    def vowels(word)
         word + "way"
    end 



    
end 