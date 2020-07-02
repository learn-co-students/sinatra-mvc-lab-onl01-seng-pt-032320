class PigLatinizer
  attr_reader :text
 
  def initialize(words)
    
  end

  def piglatinize(word)
    if word.start_with?("a", "e", "i", "o", "u", "y")
      word = "#{word}way"
      word
    else
      word = word.split
      pig_lat_word = "#{word.last(word.count).join}ay"
    end
  end
end