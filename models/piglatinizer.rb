class PigLatinizer
  attr_reader :text
  
  def piglatinize(sentence)
    array = sentence.split(" ")
    array.map { |word| piglatinizer(word)}.join(" ")
  end

  def piglatinizer(word)
    if word.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
      "#{word}way"
    else
      vowel_place = word.index(/aeiouAEIOU/)
      
      first_part = word.slice(0..vowel_index-1)
      second_part = word.slice(vowel_index..-1)
      "#{first_part + second_part}ay"
    end
  end
end