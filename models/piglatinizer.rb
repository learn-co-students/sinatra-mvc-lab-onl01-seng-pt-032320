class PigLatinizer
  
  def piglatinize(phrase)
    words = phrase.split(" ")
      words.map do |word| 
        if word.downcase.index(/[aeiou]/) == 0
          word + "way"
        else
          index = word.index(/[aeiou]/)
          first_part = word.slice!(0..index-1)
          word + first_part +"ay"
        end
      end.join(" ")
  end

end