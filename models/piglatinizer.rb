
class PigLatinizer
  
 def piglatinize(word)
    if word.split(" ").count == 1
      piglatinize_word(word)
      #binding.pry
    else
      phrase = word.split(" ")
      new_phrase = phrase.collect {|word| piglatinize_word(word)}
      new_phrase.join(" ")
    end
  end

  def piglatinize_word(word)
    if word.downcase.start_with?(/[aeoui]/)
      word + "way" 
    else #Trial and error - Cant use elsif or else if 
      while word.downcase.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
        word = word.split('')
        first = word[0]
        word.shift
        word << first
        word = word.join('')
      end
      word + "ay"
    end
  end
end