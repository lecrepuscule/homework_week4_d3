class Translator

  def self.translate word
    vowels = ["a", "e", "i", "o", "u"]
    word.downcase!
    if vowels.include? word[0]
      new_word = word.concat("ay")
    else
    end
    new_word
  end

end