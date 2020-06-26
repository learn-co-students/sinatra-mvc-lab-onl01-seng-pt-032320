class PigLatinizer
    def is_vowel?(letter)
        ["a", "e", "i", "o", "u"].include?(letter.downcase)
    end

    def piglatin_word(word)
        if is_vowel? word[0]
            "#{word}way"
        else
            consonants = word.chars.take_while {|letter| !is_vowel?(letter)}
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
    end

    def piglatinize(string)
        string.split(" ").map{|word| piglatin_word(word)}.join(" ")
    end
end