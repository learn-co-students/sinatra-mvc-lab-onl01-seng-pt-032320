class PigLatinizer

    attr_reader :string

    def piglatinize(string)
        @string = string
        words = @string.split(/\W+/)
        if words.size == 1
            latinize(words[0])
        else
           array = words.map {|word| latinize(word)}
           string = array.join(" ")
        end
    end
   
    def latinize(word)
        vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
        if vowels.include?(word[0])
            word += 'way'
        else 
          if vowels.include?(word[1])
            word = word.slice(1..word.length-1)+word.slice(0)+'ay'
          else
            if vowels.include?word[2]
              word = word.slice(2..word.length-1)+word.slice(0..1)+'ay'
            else 
              word = word.slice(3..word.length-1)+word.slice(0..2)+'ay'
            end
          end
        end

    end


end