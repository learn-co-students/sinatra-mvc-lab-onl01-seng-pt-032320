class PigLatinizer
    def piglatinize(string)
        words = string.split(' ')
        new_string = ""
        words.each do |word|
            new_string += "#{convert(word)} "
        end
        new_string.strip
    end

    def convert(string)
        s = string.split('')
        if is_a_consonant(s.first)
            starting_consonants = "#{string.slice!(0)}"
            number = 1
            until is_a_consonant(s[number]) == false
                starting_consonants += string.slice!(0)
                number += 1
            end
            converted = "#{string}#{starting_consonants}ay"
            # if is_a_consonant(s[1])
                
            # else
            #     first_letter = string.slice!(0)
            #     converted = "#{string}#{first_letter}ay"
            # end            
        else
            converted = "#{string}way"
        end
        converted
    end

    def is_a_consonant(char)
        if char.downcase.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
            true
        else
            false
        end
    end
end