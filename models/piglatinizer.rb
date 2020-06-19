class PigLatinizer
   
    def piglatinize(text)
        new_sentence = []
        text.split(" ").each do |word|
            new_sentence << self.pig_word(word)
        end
        new_sentence.join(" ")
    end

    def pig_word(word)
        new_word = word
        if !!word.split("")[0].match(/[aeiouAEIOU]/) #If the first letter is a vowel
            new_word << "w"
        else
            if !!word.split("")[1].match(/[aeiouAEIOU]/) #If the second letter is a vowel
                new_word = word.split("")[1..-1]
                new_word << word.split("")[0]
            else
                if !!word.split("")[2].match(/[aeiouAEIOU]/) #If the third letter is a vowel
                    new_word = word.split("")[2..-1]
                    new_word << word.split("")[0]
                    new_word << word.split("")[1]
                else
                    new_word = word.split("")[3..-1]
                    new_word << word.split("")[0]
                    new_word << word.split("")[1]
                    new_word << word.split("")[2]
                end
            end
            new_word = new_word.join
        end
        new_word << "ay"
    end
    
end