class PigLatinizer
  attr_reader :user_phrase
  
  def piglatinize(words)
    wrd_array = words.downcase.split(" ")
    piglatin = nil
    if wrd_array.count > 1
      piglatin = wrd_array.collect do |w|
                  self.class.latinize(w)
                end
      piglatin.join(" ")
    else wrd_array.count > 0
      piglatin = self.class.latinize(wrd_array.first)
    end
    @user_phrase = piglatin
  end
    
  def self.latinize(word)
      w = word.gsub('/[^a-z]/','')
      newword = ""
      vowels = "aeiou"
      frst_char = w.split.first
      if vowels.include?(frst_char)
        newword = w + "way"
      else 
        iscons = true
        postfix = []
        w.split.each do |c|
          unless vowels.include?(c)
            postfix << c
          else
            iscons = false
          end
        end
        pst = postfix.join.to_s
      midword = w.gsub(pst,'')
      puts "#{midword}"
      newword = midword + pst + "ay"
      end
      newword
  end
      
end