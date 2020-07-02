class PigLatinizer
  attr_reader :text
 
  def initialize(text)
    @text = text.downcase
  end

  def self.pigLatinize
    if self.start_with?("a", "e", "i", "o", "u", "y")
      word = "#{self}way"
      word
    else
      word = self.split
      pig_lat_word = "#{word.last(word.count).join}ay"
  end
end