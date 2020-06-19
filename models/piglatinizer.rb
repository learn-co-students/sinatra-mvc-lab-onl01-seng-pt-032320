class PigLatinizer
  attr_accessor :phrase

  def piglatinize(str)
    if !str.strip.include? " "
      if str.downcase.index(/[aeiou]/) == 0
        str + "way"
      else
        vowel_index = str.index(/[aeiou]/)
        front_end = str.slice!(0..vowel_index-1)
        str + front_end +"ay"
      end
    else
    array = str.split(" ")
    @phrase = array.collect {|word| piglatinize(word)}.join(" ")
    end
  end

end
