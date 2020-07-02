class PigLatinizer
  attr_reader :text
  
  def piglatinize(sentence)
    array = sentence.split(" ")
    array.map { |word| piglatinizer(word)}.join(" ")
  end

  def piglatinizer(word)
    if word.start_with?("a", "e", "i", "o", "u", "y")
      "#{word}way"
    else
      word = word.split(//) #turns our word into an array
      word = word.drop(1) #removes the first letter of the word
      word = word.join #converts the word back to a string
      "#{word}ay" #adds the pig latin to the word and returns it
    end
  end
end