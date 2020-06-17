class PigLatinizer
    
      def vowel?(character)
        character.match(/[aAeEiIoOuU]/)
      end
    
      def piglatinize_word(input)
        
        if vowel?(input[0])
          input + "way"
        else
          vowel_index = input.index(/[aAeEiIoOuU]/)
          consonants = input.slice(0..vowel_index-1)
          input_extras = input.slice(vowel_index..input.length)
          input_extras + consonants + "ay"
        end
      end

      def piglatinize(user_input)
        user_input.split(" ").map{ |word| piglatinize_word(word)}.join(" ")
      end
    
end