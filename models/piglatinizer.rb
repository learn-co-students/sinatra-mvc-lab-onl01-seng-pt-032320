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
      vowel = word.index(/[aAeEiIoOuU]/)

      second = word.slice(0..vowel-1)
      first = word.slice(vowel..-1)
      "#{first + second}ay"
    end
  end
end